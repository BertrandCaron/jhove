
## GIF-HUL-1

### Message
> Wrong application extension block size

### Details
Needs review

* Type: ErrorMessage
* Source location: [GifModule.java L625](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/GifModule.java#L625)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## GIF-HUL-2

### Message
> Unknown data block type

### Details
Needs review

* Type: ErrorMessage
* Source location: [GifModule.java L502](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/GifModule.java#L502)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## GIF-HUL-3

### Message
> Unknown extension block type

### Details
Needs review

* Type: ErrorMessage
* Source location: [GifModule.java L533](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/GifModule.java#L533)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## GIF-HUL-4

### Message
> Invalid GIF header

### Details
Needs review

* Type: ErrorMessage
* Source location: [GifModule.java L385](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/GifModule.java#L385)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## GIF-HUL-5

### Message
> Multiple graphics control blocks for one image

### Details
Needs review

* Type: ErrorMessage
* Source location: [GifModule.java L813](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/GifModule.java#L813)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## GIF-HUL-6

### Message
> Wrong graphics control block size

### Details
Needs review

* Type: ErrorMessage
* Source location: [GifModule.java L820](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/GifModule.java#L820)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## GIF-HUL-7

### Message
> Wrong plain text extension block size

### Details
Needs review

* Type: ErrorMessage
* Source location: [GifModule.java L718](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/GifModule.java#L718)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## GIF-HUL-8

### Message
> Plain text extension requires global color table

### Details
Needs review

* Type: ErrorMessage
* Source location: [GifModule.java L727](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/GifModule.java#L727)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## GIF-HUL-9

### Message
> End of file reached without encountering Trailer block

### Details
Needs review

* Type: ErrorMessage
* Source location: [GifModule.java L487](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/GifModule.java#L487)
* Examples: Needed

### Impact
It depends, from minor to severe.

A GIF file must end with the so-called Trailer, a single byte `0x3b` (see the [GIF specification](https://www.w3.org/Graphics/GIF/spec-gif89a.txt)). This error message indicates that the trailer byte is missing.

If *only* the trailer byte is missing (e.g., because the GIF file was created by buggy software that did not add it) most viewers will still display the file without complaints. Further more, the trailer byte can then easily be added, fixing the error (see below).

If more than the trailer byte is missing (e.g., because the file was damaged during a transfer) it may be hard or even impossible to repair it, depending on how much is missing.

NB, since the PRONOM signatures for GIF (fmt/3 and fmt/4) rely on the trailer byte as well PRONOM based file format identification will return Unknown for files with this error.

### Remediation
If *only* the trailer byte is missing it can be added like this:

    $ echo -ne '\x3b' >> a.gif

## GIF-HUL-10

### Message
> Unexpected end of file

### Details
Needs review

* Type: ErrorMessage
* Source location: [GifModule.java L511](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/GifModule.java#L511)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review

