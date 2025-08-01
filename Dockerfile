# See https://docs.docker.com/engine/userguide/eng-image/multistage-build/
# First build the app on a maven open jdk 11 container
ARG JHOVE_VERSION=1.34.0
FROM maven:3-eclipse-temurin-11-alpine AS dev-builder
ARG JHOVE_VERSION
ENV JHOVE_VERSION=${JHOVE_VERSION}

RUN apk add --no-cache git
WORKDIR /build

# Clone the repo, checkout the revision and build the application
RUN git clone https://github.com/openpreserve/jhove.git

WORKDIR /build/jhove
RUN git checkout v${JHOVE_VERSION} && mvn clean package && java -jar jhove-installer/target/jhove-installer-${JHOVE_VERSION}.jar docker-install.xml

# Now build a Java JRE for the Alpine application image
# https://github.com/docker-library/docs/blob/master/eclipse-temurin/README.md#creating-a-jre-using-jlink
FROM eclipse-temurin:11-jdk-alpine AS jre-builder

# Create a custom Java runtime
RUN "$JAVA_HOME/bin/jlink" \
         --add-modules java.base,java.logging,java.xml,jdk.crypto.ec \
         --strip-debug \
         --no-man-pages \
         --no-header-files \
         --compress=2 \
         --output /javaruntime

# Now the final application image
FROM alpine:3

# Set for additional arguments passed to the java run command, no default
ARG JAVA_OPTS
ENV JAVA_OPTS=$JAVA_OPTS
# Specify the veraPDF REST version if you want to (to be used in build automation)
ARG JHOVE_VERSION
ENV JHOVE_VERSION=${JHOVE_VERSION}

# Copy the JRE from the previous stage
ENV JAVA_HOME=/opt/java/openjdk
ENV PATH "${JAVA_HOME}/bin:${PATH}"
COPY --from=jre-builder /javaruntime $JAVA_HOME

# Since this is a running network service we'll create an unprivileged account
# which will be used to perform the rest of the work and run the actual service:
RUN addgroup -S jhove && adduser -S -G jhove -h /opt/jhove jhove
RUN mkdir --parents /var/opt/jhove/logs && chown -R jhove:jhove /var/opt/jhove

USER jhove

WORKDIR /opt/jhove
# Copy the application from the previous stage
COPY --from=dev-builder /opt/jhove/ /opt/jhove/

ENTRYPOINT ["/opt/jhove/jhove"]
