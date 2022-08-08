
## JPEG-HUL-1

### Message
> DTT segment without previous DTI

### Details
Needs review

* Type: ErrorMessage
* Source location: [JpegModule.java L1227](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/JpegModule.java#L1227)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## JPEG-HUL-2

### Message
> Unexpected end of file

### Details
Needs review

* Type: ErrorMessage
* Source location: [JpegModule.java L654](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/JpegModule.java#L654)
* Examples: [1](https://code.google.com/archive/p/imagetestsuite/downloads)

### Impact
Needs review

### Remediation
Needs review


## JPEG-HUL-3

### Message
> I/O exception processing Exif metadata

### Details
Needs review

* Type: ErrorMessage
* Source location: [JpegExif.java L168](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/jpeg/JpegExif.java#L168)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## JPEG-HUL-4

### Message
> Invalid JPEG header

### Details
Needs review

* Type: ErrorMessage
* Source location: [JpegModule.java L887](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/JpegModule.java#L887)
* Examples: [1](https://code.google.com/archive/p/imagetestsuite/downloads)

### Impact
Needs review

### Remediation
Needs review


## JPEG-HUL-5

### Message
> JFIF APP0 marker not at beginning of file

### Details
Needs review

* Type: ErrorMessage
* Source location: [JpegModule.java L928](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/JpegModule.java#L928)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## JPEG-HUL-6

### Message
> Marker not valid in context

### Details
Needs review

* Type: ErrorMessage
* Source location: [JpegModule.java L645](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/JpegModule.java#L645)
* Examples: [1](https://code.google.com/archive/p/imagetestsuite/downloads)

### Impact
Needs review

### Remediation
Needs review


## JPEG-HUL-7

### Message
> Expected marker byte 255, got ...

### Details
Needs review

* Type: ErrorMessage
* Source location: [JpegModule.java L489](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/JpegModule.java#L489)
* Examples: [1](https://code.google.com/archive/p/imagetestsuite/downloads)

### Impact
Needs review

### Remediation
Needs review


## JPEG-HUL-8

### Message
> SPIFF marker not at beginning of file

### Details
Needs review

* Type: ErrorMessage
* Source location: [JpegModule.java L1131](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/JpegModule.java#L1131)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## JPEG-HUL-9

### Message
> File does not begin with SPIFF, Exif or JFIF segment

### Details
Needs review

* Type: ErrorMessage
* Source location: [JpegModule.java L503](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/JpegModule.java#L503)
* Examples: [1](https://drive.google.com/open?id=0Bxn2YxzZ-3xCVlFpNldDb2FPRFk)

### Impact
When this error is raised for a well-formed but not valid file it typically hints at an uncommon but not necessarily broken file structure. From the [JHOVE documentation](https://jhove.openpreservation.org/modules/jpeg/):
> A file which consists of a JPEG data stream, but does not contain the required segments for a JFIF, SPIFF, Exif, JTIP, or JPEG-LS file is considered well-formed but not valid.

In particular, the most common JPEG file formats JFIF and Exif expect a file to start with the hex sequence `ffd8 ffe0` (SOI + APP0) or `ffd8 ffe1` (SOI + APP1), respectively. However, the original JPEG specification ([ITU-T ](https://www.w3.org/Graphics/JPEG/itu-t81.pdf) T.81, Annex B) allows other data immediately after the SOI marker (e.g., a DQT marker or other APPn segments) as well. That may not be in line with one of the abovementioned formats though which restrict the file structure in one way or another, leading to this error.

So as long as a file with this error opens correctly in a viewer (better yet, in several different viewers) and has no other errors it may just be an uncommon JPEG variant, making the final verdict a file format policy question.

### Remediation
As long as this is the only error in a file one of the following measures may be appropriate:

* Ignoring the error i.e., accepting the file format although it is (very) uncommon.
* Converting it to another, more common JPEG format like JFIF. (TODO With which tool?)
* Adding an APP0 segment like ffe0 0010 4a46494600 0102 00 0001 0001 00 00 (must be adapted to the concrete file!) after the SOI marker to turn the file into a JFIF file. However, this is adventurous at best; don't try this at home!


## JPEG-HUL-10

### Message
> Error creating temporary file. Check your configuration

### Details
Needs review

* Type: ErrorMessage
* Source location: [JpegExif.java L69](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/jpeg/JpegExif.java#L69)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## JPEG-HUL-11

### Message
> Unrecognized tiling data

### Details
Needs review

* Type: ErrorMessage
* Source location: [JpegModule.java L1519](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/JpegModule.java#L1519)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## JPEG-HUL-12

### Message
> TIFF-HUL module required to report Exif data

### Details
Needs review

* Type: InfoMessage
* Source location: [JpegModule.java L1054](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/JpegModule.java#L1054)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review

