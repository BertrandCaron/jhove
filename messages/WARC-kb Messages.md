
## WARC-KB-1

### Message
> Variable message

### Details
Unexpected error while parsing file.

* Type: IOException
* Source location: [WarcModule.java L190](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WarcModule.java#L190)
* Examples: Needed

### Impact

The module was unable to complete file characterization or validation.

### Remediation

Please report the issue and circumstances to the project for investigation.

## WARC-KB-2

### Message

> Invalid block digest algorithm: ...

### Details

The WARC-Block-Digest is an optional parameter indicating the algorithm name and calculated value of a digest applied to the full block of the record. This error message indicates that the algorithm is not valid. It's also possible that the algorithm is valid, but not supported by the `java.io.security.MessageDigest` class, that is used to validate. Supported algorithms are: MD2, MD5, SHA-1, SHA-224, SHA-256, SHA-384, SHA-512, SHA-512/224, SHA-512/256. Most web crawlers use SHA-1. The WARC standard recommends no particular algorithm.

* Type: JhoveException
* Source location: [WarcModule.java L210](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WarcModule.java#L210)
* Examples: Needed

### Impact

Needs review.

This seems to have little impact, since it's an optional parameter and no particular algorithm is required.

### Remediation

You can open a WARC file with a text editor and make some changes in the file.

An example of a header of a WARC record containing a `WARC-Block-Digest:`

```warc
WARC/1.0
WARC-Type: response
WARC-Target-URI: http://www.archive.org/images/logoc.jpg
WARC-Warcinfo-ID: <urn:uuid:d7ae5c10-e6b3-4d27-967d-34780c58ba39>
WARC-Date: 2006-09-19T17:20:24Z
WARC-Block-Digest: sha1:UZY6ND6CCHXETFVJD2MSS7ZENMWF7KQ2
WARC-Payload-Digest: sha1:CCHXETFVJD2MUZY6ND6SS7ZENMWF7KQ2
WARC-IP-Address: 207.241.233.58
WARC-Record-ID: <urn:uuid:92283950-ef2f-4d72-b224-f54c6ec90bb0>
Content-Type: application/http;msgtype=response
WARC-Identified-Payload-Type: image/jpeg
Content-Length: 1902
```

When possible, The best option is to create a new WARC file of the website or webpage with a crawler that uses a supported digest algorithm (most crawlers use SHA-1). Another solution would be to remove the `WARC-Block-Digest` parameter that's causing the problem. This is probably be the easiest solution. A more complex solution is to recalculate the checksum for the full block of the record that's causing the problem with a supported algorithm.

### References

* [WARC spec 1.0](https://iipc.github.io/warc-specifications/specifications/warc-format/warc-1.0/)
* [Java Message Digest Algorithms](https://docs.oracle.com/javase/8/docs/technotes/guides/security/StandardNames.html#MessageDigest)

## WARC-KB-3

### Message
> Invalid payload digest algorithm: ...

### Details

The WARC-Block-Digest is an optional parameter indicating the algorithm name and calculated value of a digest applied to the payload referred to or contained by the record - which is not necessarily equivalent to the record block. This error message indicates that the algorithm is not valid. It's also possible that the algorithm is valid, but not supported by the `java.io.security.MessageDigest` class, that is used to validate. Supported algorithms are: MD2, MD5, SHA-1, SHA-224, SHA-256, SHA-384, SHA-512, SHA-512/224, SHA-512/256. Most web crawlers use SHA-1. The WARC standard recommends no particular algorithm.

* Type: JhoveException
* Source location: [WarcModule.java L210](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WarcModule.java#L210)
* Examples: Needed

### Impact

Needs review.

This seems to have little impact, since it's an optional parameter and no particular algorithm is required.

### Remediation

You can open a WARC file with a text editor and make some changes in the file.

An example of a header of a WARC record containing a `WARC-Block-Digest:`

```warc
WARC/1.0
WARC-Type: response
WARC-Target-URI: http://www.archive.org/images/logoc.jpg
WARC-Warcinfo-ID: <urn:uuid:d7ae5c10-e6b3-4d27-967d-34780c58ba39>
WARC-Date: 2006-09-19T17:20:24Z
WARC-Block-Digest: sha1:UZY6ND6CCHXETFVJD2MSS7ZENMWF7KQ2
WARC-Payload-Digest: sha1:CCHXETFVJD2MUZY6ND6SS7ZENMWF7KQ2
WARC-IP-Address: 207.241.233.58
WARC-Record-ID: <urn:uuid:92283950-ef2f-4d72-b224-f54c6ec90bb0>
Content-Type: application/http;msgtype=response
WARC-Identified-Payload-Type: image/jpeg
Content-Length: 1902
```

When possible, The best option is to create a new WARC file of the website or webpage with a crawler that uses a supported digest algorithm (most crawlers use SHA-1). Another solution would be to remove the `WARC-Payload-Digest` parameter that's causing the problem. This is probably be the easiest solution.

### References

* [WARC spec 1.0](https://iipc.github.io/warc-specifications/specifications/warc-format/warc-1.0/)
* [Java Message Digest Algorithms](https://docs.oracle.com/javase/8/docs/technotes/guides/security/StandardNames.html#MessageDigest)

## WARC-KB-4

### Message
> WarcReader has not been properly instantiated.

### Details

An error occured while trying to parse the records in the WARC-file.

* Type: JhoveException
* Source location: [WarcModule.java L244](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WarcModule.java#L244)
* Examples: Needed

### Impact

The module was unable to complete file characterization or validation.

### Remediation

Please report the issue and circumstances to the project for investigation.

## WARC-KB-5

### Message
> Variable message

### Details

There is an error in the WARC file. Error messages are generated by JWAT.

* Type: ErrorMessage
* Source location: [WarcModule.java L285](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WarcModule.java#L285)
* Examples: [1](https://github.com/openpreserve/jhove/blob/integration/jhove-ext-modules/src/test/resources/warc/invalid-empty.warc), [2](https://github.com/openpreserve/jhove/blob/integration/jhove-ext-modules/src/test/resources/warc/invalid-warcfile-duplicate-fields), [3](https://github.com/openpreserve/jhove/blob/integration/jhove-ext-modules/src/test/resources/warc/invalid-warcfile-digest-fields.warc)

Possible error messages:

* DUPLICATE: entity has more than one value definition
* ERROR_EXPECTED: entity is erroneous and something else was expected.
* ERROR: entity is erroneous
* INVALID: invalid circumstance surrounding the entity, e.g. empty lines before the WARC version
* INVALID_ENCODING: invalid encoding encountered
* INVALID_EXPECTED: invalid data, expected something else
* REQUIRED_INVALID: required entity has an invalid value
* UNDESIRED_DATA: entitiy is undesired
* UNKNOWN: entity has an unknown value according to some specification

### Impact

The impact will depend on the given error.

### Remediation

Some issues, like INVALID can be solved by opening the WARC file with a text editor and remove the invalid data, e.g. removing the empty lines before the WARC version. When possible, The best option is to create a new WARC file of the website or webpage.

### References

* [WARC spec 1.0](https://iipc.github.io/warc-specifications/specifications/warc-format/warc-1.0/)
* [JWAT documentation](https://sbforge.org/display/JWAT/Documentation)
* [JWAT source code](https://github.com/netarchivesuite/jwat)

## WARC-KB-6

### Message
> Variable message

### Details

There are some issues with the WARC file that could cause a problem now or in the future. Warning messages are generated by JWAT.

* Type: InfoMessage
* Source location: [WarcModule.java L292](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/WarcModule.java#L292)
* Examples: [1](https://github.com/openpreserve/jhove/blob/integration/jhove-ext-modules/src/test/resources/warc/invalid-warcfile-contenttype-recommended.warc), [2](https://github.com/openpreserve/jhove/blob/integration/jhove-ext-modules/src/test/resources/warc/invalid-warcfile-contenttype-warcinfo-recommended.warc)

Possible warning messages:

* EMPTY: empty entity value
* RECOMMENDED: entity value differs from recommended value
* RECOMMENDED MISSING: entity value missing but is recommended
* UNDESIRED DATA: entity is undesired
* UNKNOWN: entity has an unknow value according to some specification

### Impact

This will probably have no impact now, but the issue can cause failures in the future.

### Remediation

If you're familiar with the WARC specification, some issues can be solved by opening the WARC file with a text editor and change the entity that generates a warning. When possible, The best option is to create a new WARC file of the website or webpage.

## WARC-KB-7

### Message
> 'record' should never be null

### Details

An Illegal Argument Exception occurred while creating an object of the WARC Record to persist the data.

* Type: IllegalArgumentException
* Source location: [WarcRecordData.java L140](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/warc/WarcRecordData.java#L140)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review

