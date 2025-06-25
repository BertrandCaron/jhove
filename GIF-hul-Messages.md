
## GIF-HUL-1

### Message
> Wrong application extension block size

### Details
Needs review

* Type: ErrorMessage
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20GIF_HUL_1&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20GIF_HUL_2&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20GIF_HUL_3&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20GIF_HUL_4&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## GIF-HUL-5

### Message
> Multiple Graphics Control Extension blocks for one image

### Details
Needs review

* Type: ErrorMessage
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20GIF_HUL_5&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## GIF-HUL-6

### Message
> Wrong Graphic Control Extension block size

### Details
Needs review

* Type: ErrorMessage
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20GIF_HUL_6&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20GIF_HUL_7&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20GIF_HUL_8&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20GIF_HUL_9&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20GIF_HUL_10&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review

