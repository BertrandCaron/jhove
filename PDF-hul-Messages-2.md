
## PDF-HUL-76

### Message
> Trailer dictionary Info key is not an indirect reference

### Details
The "Info" entry of a trailer dictionary does not contain an indirect object reference (e.g. "1 0 R"). If an "Info" entry exists in a trailer, it should point to the document's information dictionary via an indirect object reference.

* Type: PdfinvalidException
* Source location: [PdfModule.java L1124](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1124)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.4
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.5


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-77

### Message
> Invalid ID in trailer

### Details
The "ID" value returned from the trailer dictionary is an array but does not have exactly two elements. The trailer ID is optional but if present it must be an array of two byte strings that constitute a file identifier.

* Type: PDfInvalidException
* Source location: [PdfModule.java L1139](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1139)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.4
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.5


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-78

### Message
> Invalid ID in trailer

### Details
Some exception occured processing the trailer "ID" value, most likely an invalid (non byte string) array element. The tailer "ID" is optional but if present it must be an array of two byte strings that constitute a file identifier.

* Type: PDfInvalidException
* Source location: [PdfModule.java L1151](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1151)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.4
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.5


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-79

### Message
> Invalid ID in trailer

### Details
The "ID" value returned from the trailer dictionary is not an array. The ID attribute is optional but if present it must be an array of two byte strings that constitute a file identifier.

* Type: PDfInvalidException
* Source location: [PdfModule.java L1155](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1155)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.4
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.5


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-80

### Message
> Invalid object number in cross-reference stream

### Details
The object number of a cross-reference stream could not be found ("-1"), or is greater than the total number of entries in the document's cross-reference table at the time that stream was written, meaning either the object number or table size is invalid.

* Type: PdfMalformedException
* Source location: [PdfModule.java L1211](https://github.com/openpreserve/jhove/blob/release-1.16/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1211)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.7
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.8


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-81

### Message
> Malformed cross-reference stream

### Details
This error doesn't seem to be reachable, there's nothing to throw an I/O exception in the try block code. needs review

* Type: ErrorMessage, Malformed
* Source location: [PdfModule.java L1238](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1238)
* Examples: Needed

### References
 - PDF 1.6: Needs review
 - PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-82

### Message
> Malformed cross-reference table

### Details
The offset or object number (for a free entry) for a cross reference table entry wasn't a numeric literal.

* Type: PdfInvalidException
* Source location: [PdfModule.java L1289](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1289)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.3
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.4


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-83

### Message
> Malformed cross-reference table

### Details
The final literal keyword that should be "n" for a table entry or "f" for a free entry is not a keyword at all.

* Type: PdfInvalidException
* Source location: [PdfModule.java L1289](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1289)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.3
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.4


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-84

### Message
> Illegal operator in cross-reference table

### Details
An unexpected keyword was found in a cross-reference entry. Expected keywords are "f" or "n".

* Type: PdfMalformedException
* Source location: [PdfModule.java L1306](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1306)
* Examples: [1](http://wiki.opf-labs.org/download/attachments/101613571/SIP180620_ReColl-145370_eth-24266-02.pdf)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.3
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.4


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-85

### Message
> No document catalog dictionary

### Details
The trailer has no document catalogue entry ("Root") or a trailer was not found. \<Insert document catalogue explanation here.>
JHOVE's approach to the document catalog is a little scattergun. Specifically here the reference to the document catalog is null. It's not clear that this can be reached as similar checks are done when parsing the trailer earlier.

* Type: Error Message, Malformed
* Source location: [PdfModule.java L1339](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1339)
* Examples: [1](https://drive.google.com/open?id=0Bxn2YxzZ-3xCdi10RGM4Y3lqdVU), [2](http://wiki.opf-labs.org/download/attachments/101613571/SIP179680_ReColl-146381_eth-25337-01.pdf)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.1
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.4
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.2
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.5


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-86

### Message
> No document catalog dictionary

### Details
The trailer contains a document catalogue entry ("Root") but it cannot be resolved. \<Insert document catalogue explanation here.>

* Type: Error Message, Malformed
* Source location: [PdfModule.java L1355](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1355)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.1
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.4
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.2
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.5


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-87

### Message
> File header gives version as ..., but catalog dictionary gives version as ...

### Details
The PDF version specified in the header is different from the version specified in the document catalogue dictionary.
This is OK by specification and the higher PDF version "wins" in terms of the version of the specification the document conforms to.

* Type: InfoMessage
* Source location: [PdfModule.java L1418](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1418)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.2


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-88

### Message
> Invalid Version in document catalog

### Details
The document's PDF version, from EITHER the file header or document catalog dictionary, cannot be recognised as a number, this doesn't apply to the docuement catalog alone, misleading and needs review, or at least MUST be sure that the header version parses properly.

* Type: PdfInvalidException
* Source location: [PdfModule.java L1430](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1430)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.2


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-89

### Message
> Invalid Names dictionary

### Details
The document catalogue dictionary's "Names" value is a reference to a non-dictionary object.

* Type: PdfInvalidException
* Source location: [PdfModule.java L1457](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1457)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.2


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-90

### Message
> Invalid Names dictionary

### Details
An unexpected error occurred while retrieving the document catalogue's Names dictionary ("Names").

* Type: PdfMalformedException
* Source location: [PdfModule.java L1461](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1461)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.2


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-91

### Message
> Invalid destinations dictionary

### Details
The document catalogue's "Dests" entry references an object which is not a dictionary. The optional "Dests" entry is expected to contain a dictionary of the document's destination objects.

* Type: PdfInvalidException
* Source location: [PdfModule.java L1475](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1475)
* Examples: [1](https://drive.google.com/open?id=0BzmAJJIyoZ9xUHRudTU5WTRZZXc)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.2


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-92

### Message
> Invalid destinations dictionary

### Details
An unexpected error occurred while retrieving the document catalogue's destinations dictionary ("Dests").

* Type: PdfMalformedException
* Source location: [PdfModule.java L1479](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1479)
* Examples: [1](https://drive.google.com/open?id=0BzmAJJIyoZ9xOS1HQWpKUWNsakE)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.2


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-93

### Message
> Invalid algorithm value in encryption dictionary

### Details
The "V" entry of an encryption dictionary, which specifies the encryption algorithm used, has an invalid value. It must be a number value from 0-4 inclusive. Note that the PDF 1.7 specification seems to disbar the "3" option also.

* Type: PdfInvalidException
* Source location: [PdfModule.java L1557](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1557)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.2


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-94

### Message
> Unexpected exception ...

### Details
Unexpected error while parsing the document information dictionary, most likely a missing (null) object or object of the wrong type encountered while resolving the dictionary object or processing its entries.

* Type: ErrorMessage
* Source location: [PdfModule.java L1676](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1676)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.2.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 14.2.3


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-95

### Message
> Document page tree not found

### Details
The document catalogue is missing its mandatory "Pages" entry. The entry must be a reference to the page tree node dictionary that is root of the document's page tree.

* Type: PdfInvalidException
* Source location: Needs review
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.1
 - PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-96

### Message
> Document page tree not found

### Details
There was an error parsing the documents page tree.

* Type: PdfInvalidException
* Source location: [PdfModule.java L1687](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1687)
* Examples: [1](https://drive.google.com/open?id=0Bxn2YxzZ-3xCZ0wyOWxWSHk2Zlk), [2](http://wiki.opf-labs.org/download/attachments/101613571/SIP253613_ReColl-154468_eth-8330-02.pdf)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.2
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.3
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.2


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-97

### Message
> Invalid page dictionary object

### Details
The "Pages" reference from the document catalog was resolved to a non-dictionary object. This must resolve to a dictionary representing the page tree element that is the tree's root node.

* Type: PdfMalformedException
* Source location: [PdfModule.java L1692](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1692)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.2
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.3
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.2


### Impact
Needs review

### Remediation
Example PDF we (@BL) have so far has turned out to be a bug in source code from handling stream objects - https://github.com/openpreserve/jhove/pull/151. Correcting error leads to PDF-HUL-56.


## PDF-HUL-98

### Message
> Variable message

### Details
Unexpected error while parsing the document page tree.

* Type: ErrorMessage
* Source location: [PdfModule.java L1700](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1700)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.3


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-99

### Message
> Unexpected exception ...

### Details
Unexpected error while parsing the document page label tree.

* Type: ErrorMessage
* Source location: [PdfModule.java L1732](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1732)
* Examples: Needed

### References
 - PDF 1.6: Needs review
 - PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-100

### Message
> Invalid or ill-formed XMP metadata

### Details
There was a character encoding issue when parsing the XMP metadata embedded in the PDF. This error is a catch around an initial SAX error that's analysed for an encoding value which is used in a second attempt to open the file. It's not clear how often this error is triggered, so I added an info log statement.

* Type: PdfInvalidException
* Source location: [PdfModule.java L1777](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1777)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.2.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 14.3.2


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-101

### Message
> Invalid or ill-formed XMP metadata

### Details
An exception was caught while parsing an XMP block embedded in the PDF.

* Type: ErrorMessage, Invalid
* Source location: [PdfModule.java L1791](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1791)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.2.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 14.3.2


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-102

### Message
> Unexpected exception ...

### Details
Unexpected error while parsing a page objects external content streams. This is a single stream or an array of streams that is the value of the optional "Contents" key.

* Type: ErrorMessage
* Source location: [PdfModule.java L1836](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1836)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.3.3


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-103

### Message
> Unexpected exception ...

### Details
Unexpected error while parsing and analysing images embedded in the PDF. This a a very general catch and might benefit from been more specific, with more errors and more descriptive messages.

* Type: ErrorMessage
* Source location: [PdfModule.java L2146](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2146)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.2
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.7.2
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 4.7
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 4.8
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.3.3
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.8.3
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 8.8
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 8.9


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-104

### Message
> Expected dictionary for font entry in page resource

### Details
One of the font entries returned when processing the "Fonts" resource dictionary was resolved but a non-dictionary object was returned.

* Type: ErrorMessage, Malformed
* Source location: [PdfModule.java 2513-L2515](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2513-L2515)
* Examples: Needs examples

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.7.2
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 5.4
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 5.5
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.8.3
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 9.5
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 9.6


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-105

### Message
> Fonts exist, but are not displayed; ...

### Details
This is just a message to say that font information is available but not reported. The configuration needs to be changed to see the font information.

* Type: InfoMessage
* Source location: [PdfModule.java L2524-L2525](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2524-L2525)
* Examples: Not applicable, is jHove configuration

### References
 - PDF 1.6: Not applicable, is jHove configuration
 - PDF 1.7: Not applicable, is jHove configuration

### Impact
No impact. This is because a configuration option prevent the reporting of font information.

### Remediation
The configuration file can be [changed](http://jhove.openpreservation.org/modules/pdf/)to show fonts. The configuration contains: `<param>f</param>` to prevent the reporting of fonts.


## PDF-HUL-106

### Message
> Unexpected error in findFonts

### Details
Some fonts in the document are missing / unreadable in the file. Needs review.

* Type: ErrorMessage, Malformed
* Source location: [PdfModule.java L2231](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2231)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.7.2
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 5.4
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 5.5
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.8.3
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 9.5
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 9.6


### Impact
The missing fonts are typically replaced by similar fonts that are found on the client's computer. These replacements can be imperfect and may cause letters or symbols to be subtstituted by incorrect glyphs, leading to spelling errors and missing or misleading iconography.

### Remediation
Create the original document with embedded fonts, as in PDF/A-compliant files. If this is not possible, one may be able to acquire the correct font and append it to the original PDF.


## PDF-HUL-107

### Message
> Improper nesting of object streams

### Details
This occurs when an arbitary recursion limit, of thirty times, has occurred when searching for an object in a stream.

* Type: PdfMalformedException
* Source location: [PdfModule.java L2669](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2669)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.6
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.7


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-108

### Message
> Invalid object number or object stream

### Details
An object stream dictionary has failed JHOVE's validity tests:
- must have a "Type" entry which is the name: "ObjStm";
- must have a count "N" entry that's an integer value; and
- must have a first offset "First" entry that's an integer value.
This error is probably never shown, as the error is catched in [PDF-HUL-110](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages-2#pdf-hul-110).

* Type: PdfMalformedException
* Source location: [PdfModule.java L4383-L4384](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L4383-L4384)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.6
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.7


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-109

### Message
> Compression method is invalid or unknown to JHOVE

### Details
An error ("ZipException") occurred while decompressing an object stream. \<See explanation for Object Streams: Object streams are stream objects (a dictionary followed by a stream of bytes) which contain other indirect objects. Placing objects in a stream allows them to be compressed with one or more filters, optimizing file sizes.> As of October 2016, this module only supports decompressing object streams with "FlateDecode" filters, although this exception can be thrown even when FlateDecode filters are being used. Needs further investigation.
Beware if encryption is used this Error is also show. All examples are examples of encrypted documents.

* Type: PdfMalformedException
* Source location: [PdfModule.java L4392](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L4392)
* Examples: [1](https://drive.google.com/open?id=0Bxn2YxzZ-3xCaUhKODY5MVRnUzA), [2](http://wiki.opf-labs.org/download/attachments/101613571/e-book_79.pdf), [3](http://wiki.opf-labs.org/download/attachments/101613571/inkonf_1500.pdf)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.6
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.7


### Impact
For error messages due to encryption the ETH Data Archive makes sure the files can be opened, as some DRM rights expire.

### Remediation
In some cases, one could ask the producer for the password, or remove certain kinds of PDF security using software tools.


## PDF-HUL-110

### Message
> Invalid object number or object stream

### Details
An object stream dictionary has failed JHOVE's validity tests:
- must have a "Type" entry which is the name: "ObjStm";
- must have a count "N" entry thats an integer value; and
- must have a first offset "First" entry that's an integer value.


* Type: PdfMalformedException
* Source location: [PdfModule.java L4397](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L4397)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.6
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.7


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-111

### Message
> Bad page labels

### Details
The document catalog dictionary has a "PageLabels" entry but there's no children in the number tree structure. JHOVE munges PDF's page labels and number tree concepts making this error trickier to interpret.

* Type: PdfMalformedException
* Source location: [PdfModule.java L2880-L2881](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2880-L2881)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.1
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.8.6
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.3.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.2
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.9.7
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.4.2


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-112

### Message
> Page information is not displayed; ...

### Details
This just informs the user that JHOVE has skipped storing and reporting the page level properties and that it can be re-enabled by config. If the parameter p is added in the configuration the Pages are ignored `<param>p</param>`

* Type: InfoMessage
* Source location: [PdfModule.java L2912-L2913](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2912-L2913)
* Examples: Not applicable, this is a configuration option

### References
 - PDF 1.6: Not applicable
 - PDF 1.7: Not applicable

### Impact
Not applicable, this is a configuration option

### Remediation
Not applicable, this is a configuration option


## PDF-HUL-113

### Message
> Invalid page label info

### Details
A general exception was caught when parsing a document's page labels to build JHOVE's page properties.

* Type: PdfMalformedException
* Source location: [PdfModule.java L2952](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2952)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.1
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.8.6
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.3.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.2
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.9.7
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.4.2


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-114

### Message
> Annotation object is not a dictionary

### Details
An item in a page's annotations array ("Annots") does not point to a dictionary. Each item in an annotation array should point to an annotation dictionary containing that annotation's details.

* Type: PdfInvalidException
* Source location: [PdfModule.java L2970-L2971](https://github.com/openpreserve/jhove/blob/8677ad043a59d93b0dbe949047ef064bc592bb08/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2970-L2971)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.2
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.4.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.3.3
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.5.2


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-115

### Message
> Annotations exist, but are not displayed; ...

### Details
This just informs the user that JHOVE has skipped storing and reporting the annotation level properties and that it can be re-enabled by config. This is not an error, but a configuration option. By adding: `<param>a</param>` to the configuration of JHOVE, the annotations are not displayed.

* Type: InfoMessage
* Source location: [PdfModule.java L2985-L2986](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2985-L2986)
* Examples: Not applicable. This is a configuration option.

### References
 - PDF 1.6: Needs review
 - PDF 1.7: Needs review


### Impact
Not applicable, this is a configuration option

### Remediation
Not applicable, this is a configuration option

## PDF-HUL-116

### Message
> Invalid Annotation list

### Details
Unexpected error while parsing a page's annotations. This is a general catch with multiple potential causes including: an I/O exception reading an object or encountering a missing (null) object or an object of an unexpected type.

* Type: PdfMalformedException
* Source location: [PdfModule.java L2995](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2995)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.2
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.4.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.3.3
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.5.2


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-117

### Message
> Invalid page dictionary

### Details
Unexpected exception while parsing a page object'd dictionary. This is a general catch with multiple potential causes including: an I/O exception reading an object or encountering a missing (null) object or an object of an unexpected type.

* Type: PdfMalformedException
* Source location: [PdfModule.java L3054](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L3054)
* Examples: [1](http://wiki.opf-labs.org/download/attachments/101613571/SIP247751_ReColl118253_eth-49437-01.pdf)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.3.3


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-118

### Message
> Invalid page label sequence

### Details
JHOVE has calculated a page position value of less than 1. PDF's page numbering consists of a number tree whose elements are labelling ranges stored as pdf dictionaries. JHOVE's logic around page label sequences is a little confusing, this seems to be an effort to  track a "natural" sequence number, that's checked against pages accumulated in other ranges. I don't believe that this error can be thrown as it's caught by the next general catch and changed to [PDF-HUL-119](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages-2#pdf-hul-119).

* Type: PdfInvalidException
* Source location: [PdfModule.java L3096](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L3096)
* Examples: See examples in [PDF-HUL-119](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages-2#pdf-hul-119)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.1
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.8.6
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.3.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.2
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.9.7
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.4.2


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-119

### Message
> Problem with page label structure

### Details
Unexpected error while parsing the page label structure. This is a general catch with multiple potential causes including: an I/O exception reading an object or encountering a missing (null) object or an object of an unexpected type. This error is also shown when actually the problem is [PDF-HUL-118](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages-2#pdf-hul-118). All the Examples in this error are examples from this. The problem in these files are PDF-HUL-118, but instead PDF-HUL-119 is reported.

* Type: PdfMalformedException
* Source location: [PdfModule.java L3133](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L3133)
* Examples: [1](https://www.econstor.eu/obitstream/10419/49620/1/32932439X.pdf), [2](http://wiki.opf-labs.org/download/attachments/101613571/SIP110025_ReColl-66015_eth-24328-01.pdf), [3](http://wiki.opf-labs.org/download/attachments/101613571/SIP132254_ReColl-147838_eth-26921-01.pdf)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.1
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.8.6
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.3.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.2
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.9.7
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.4.2


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-120

### Message
> Annotation dictionary missing required type (S) entry

### Details
An annotation dictionary contains an action dictionary ("A") which is missing its subtype entry ("S"). The subtype entry is necessary for determining which kind of action to perform when the annotation is activated.

* Type: PdfMalformedException
* Source location: [PdfModule.java L3278-L3279](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L3278-L3279)
* Examples: [1](http://wiki.opf-labs.org/download/attachments/101613571/pp_821.pdf)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.4.1
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.5.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.5.2
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.6.2


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-121

### Message
> Invalid Annotation property

### Details
Unexpected error while parsing an annotation dictionary. This is a general catch with multiple potential causes including: an I/O exception reading an object or encountering a missing (null) object or an object of an unexpected type.

* Type: PdfMalformedException
* Source location: [PdfModule.java L3333](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L3333)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.4.1
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.5.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.5.2
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.6.2


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-122

### Message
> Variable message

### Details
This needs review, it's a horrible cludge that eats and PDFExceptions thrown while processing destination objects and always sets the invalid flag. Seems dubious behaviour.
It, for example, reports the error "Invalid indirect destination - referenced object ' ' cannot be found". This error comes from [PDF-HUL-149](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages-2#pdf-hul-149).

* Type: ErrorMessage, An Exception for all the messages coming from adding Destination to Property list
* Source location: [PdfModule.java L3378-L3383](https://github.com/openpreserve/jhove/blob/8677ad043a59d93b0dbe949047ef064bc592bb08/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L3378-L3383)
* Examples: [1](http://wiki.opf-labs.org/download/attachments/101613571/SIP110204_ReColl-124480_1-s2.0-S0370269317301144-main.pdf)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.2.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.3.2


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-123

### Message
> Outlines contain recursive references

### Details
An outline dictionary's "Next" entry points to itself. This would cause a recursive loop so JHOVE warns and breaks out. The PDF 1.6 specification doesn't explicitly disallow this.

* Type: InfoMessage
* Source location: [PdfModule.java L3967](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L3967)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.2.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.3.3


### Impact
This is an info Message warning about potential infinite loops. This isn't violating the PDF specification

### Remediation
Needs review


## PDF-HUL-124

### Message
> Malformed outline dictionary

### Details
Unexpected error while parsing the document outline. This is a general catch with multiple potential causes including: an I/O exception reading an object or encountering a missing (null) object or an object of an unexpected type.

* Type: PdfMalformedException
* Source location: [PdfModule.java L3979](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L3979)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.2.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.3.3


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-125

### Message
> Invalid outline dictionary item

### Details
An outline item dictionary has no "Title" value.

* Type: PdfInvalidException
* Source location: [PdfModule.java L4002](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L4002)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.2.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.3.3


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-126

### Message
> Invalid outline dictionary item

### Details
An outline item dictionary has no "Parent" entry. This must be an indirect reference to the parent dictionary in the outline hierarchy.

* Type: PdfInvalidException
* Source location: [PdfModule.java L4009](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L4009)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.2.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.3.3


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-127

### Message
> Invalid outline dictionary item

### Details
An outline item dictionary has a "Count" value but it's not an integer or is not a Simple Object. This is required if the outline item has children, but JHOVE doesn't check it child elements are available.

* Type: PdfInvalidException
* Source location: [PdfModule.java L4015](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L4015)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.2.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.3.3


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-128

### Message
> Outlines contain recursive references

### Details
An outline dictionary's "Next" entry points to itself. This would cause a recursive loop so JHOVE warns and breaks out. The PDF 1.6 specification doesn't explicitly disallow this.

* Type: InfoMessage
* Source location: [PdfModule.java L4068-L4069](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L4068-L4069)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.2.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.3.3


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-129

### Message
> Outlines contain recursive references

### Details
An outline dictionary's "Next" entry points to itself. This would cause a recursive loop so JHOVE warns and breaks out. The PDF 1.6 specification doesn't explicitly disallow this.

* Type: InfoMessage
* Source location: [PdfModule.java L3934](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L3934)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.2.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.3.3


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-130

### Message
> Invalid outline dictionary item

### Details
An unexpected object type was encountered while parsing an outline item. Possible causes include unexpected "Prev", "Next", "First", or "Last" values.

* Type: PdfInvalidException, ClassCastException
* Source location: [PdfModule.java L4101](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L4101)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.2.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.3.3


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-131

### Message
> Invalid outline dictionary item

### Details
Unexpected error while parsing an outline item. This is a general catch with multiple potential causes including: an I/O exception reading an object or encountering a missing (null) object.

* Type: PdfInvalidException
* Source location: [PdfModule.java L4103](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L4103)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.2.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.3.3


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-132

### Message
> Outlines exist, but are not displayed; ...

### Details
This is just a message to say that outline information isn't been reported. It is information about the `[jHove configuration](http://jhove.openpreservation.org/modules/pdf/)`. If the parameter "o" is added the Document Outline will be suppressed: `<param>o</param>`.

* Type: InfoMessage
* Source location: [PdfModule.java L3975](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L3975)
* Examples: This is configuration option in jHove.

### References
 - PDF 1.6: Needs review
 - PDF 1.7: Needs review


### Impact
No impact, this is a configuration option

### Remediation
No remediation needed as this is a configuration option.


## PDF-HUL-133

### Message
> Improperly formed date

### Details
A date found in a dictionary does not conform to the expected format. Dates specified in dictionaries should follow the format: (D:YYYYMMDDHHmmSSOHH'mm') (PDF 1.4 Spec page 100, section 3.8.2 "Dates")

* Type: PdfInvalidException, ErrorMessage
* Source location: [PdfModule.java L4227](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L4227)
* Examples: [1](https://drive.google.com/file/d/0B04zL3V7knPNU1BGNFo4OGlWZ1U/view?usp=sharing)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.8.3
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.9.4


### Impact
Needs review

### Remediation
It may happen that after a "cure" there is no information about the creation date any more, if there are no XMP metadata in the original PDF. The date may be written poorly enough that some tools cannot recognize the date and so do not translate it into the new/corrected PDF.


## PDF-HUL-134

### Message
> Cross-reference tables are broken

### Details
Another check to prevent an endless loop when processing the cross references. This is flagged the current cross reference is the same as the previous one. The program logic is a little dark here involving state across a few member variables.

* Type: ErrorMessage, MalFormed
* Source location: [PdfModule.java L827-L828](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L827-L828)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.3
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.4


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-135

### Message
> Unexpected error in parsing font property

### Details
A Java null pointer exception was caught, roughly equivalent to a missing and expected PDF object, when building the font property list. Show Fonts or Maximum Verbosity needs to be configured to show this information.

* Type: ErrorMessage, NullPointerException
* Source location: [PdfModule.java L905-L906](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L905-L906)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 5.4 - 5.8
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 9.5 - 9.9


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-136

### Message
> Too many fonts to report; some fonts omitted

### Details
Really an application level warning, there's nothing wrong with the PDF, just JHOVE's ability to report all of the details.

* Type: InfoMessage
* Source location: [PdfModule.java L910-L911](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L910-L911)
* Examples: [1](http://www.redbooks.ibm.com/redpapers/pdfs/redp4120.pdf)

### References
 - PDF 1.6: Needs review
 - PDF 1.7: Needs review


### Impact
No Impact, is an InfoMessage about jHove functionality

### Remediation
No Remediation, is an InfoMessage about jHove functionality


## PDF-HUL-137

### Message
> No PDF header

### Details
The PDF header could not be found within the file's first 1024 bytes. This can also appear when there are certain kinds of junk data before the header, even if the header exists within the first 1024 bytes.
Should a file be classified as malformed if there is any non-zero data before the header, instead of only certain kinds?
The implementation notes in the second accompanying PDF 1.6 reference has more to say about headers. The PDF 1.7 spec has no equivalent note.

* Type: ErrorMessage, Malformed
* Source location: [PdfModule.java L1041](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1041)
* Examples: [1](http://wiki.opf-labs.org/download/attachments/101613571/CERN-2005-009.pdf?version=1&modificationDate=1472125536000)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.1
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | H.3 3.4.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.2


### Impact
The file can't be identified as PDF and the version is unknown

### Remediation
If extra information is added to the header, that extra information can be removed.


## PDF-HUL-138

### Message
> No PDF trailer

### Details
An end-of-file marker ("%%EOF") could not be found within the file's last 1024 bytes. This indicates truncates and can often be due to a PDF file being incompletely uploaded or downloaded.

* Type: ErrorMessage, Malformed
* Source location: [PdfModule.java L1157-L1158](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1157-L1158)
* Examples: [1](http://wiki.opf-labs.org/download/attachments/101613571/567147525.pdf?version=1&modificationDate=1436357226000)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.4
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.5


### Impact
The file is incomplete or extra information is added after the last EOF

### Remediation
Needs to be supplied again or extra information can be removed.


## PDF-HUL-139

### Message
> Missing startxref keyword or value

### Details
The "startxref" keyword marking the reference to a cross-reference stream couldn't be found OR the following line wasn't a numeric offset to a cross reference dictionary.

* Type: ErrorMessage, Malformed
* Source location: [PdfModule.java L1213](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1213)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.7
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.8


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-140

### Message
> Document catalog dictionary object number and trailer root ref number are inconsistent.

### Details
The object retrieved as the document catalog dictionary from the cross-reference table does not have the same ID as the the reference used to retrieve it. An object's ID and it's position in the cross reference table should be the same, i.e. object ID 1 is found at index 1 in the cross-reference table. This may be indicative of a broken cross-reference table. This needs review as it's really a problem with the cross-reference table / JHOVE's parsing of it as readers are more forgiving.

* Type: ErrorMessage, MalFormed
* Source location: https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1591
* Examples: [1](https://github.com/openpreserve/jhove/raw/rel/jhove-1.20/jhove-modules/src/test/resources/edu/harvard/hul/ois/jhove/module/pdf/doc-cat/T02-01_002_document-catalog-wrong-object-number.pdf)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.3
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.4


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-141

### Message
> Document catalog Type key must have value Catalog

### Details
The document catalog dictionary object must have key called type with the value Catalog. This error is related to [PDF-HUL-142](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages-2#pdf-hul-142) and [PDF-HUL-143](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages-2#pdf-hul-143).

* Type: ErrorMessage, MalFormed
* Source location: [PdfModule.java L1598](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1598)
* Examples: [1](https://github.com/openpreserve/jhove/raw/rel/jhove-1.20/jhove-modules/src/test/resources/edu/harvard/hul/ois/jhove/module/pdf/doc-cat/T02-01_006_document-catalog-wrong-type-key.pdf)

### References
 - PDF 1.6: Needs review
 - PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-142

### Message
> Document catalog has no Type key or it has a null value.

### Details
The document catalog dictionary object must have key called type. In this error the Type does not exist and is null. This error is related to [PDF-HUL-141](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages-2#pdf-hul-141) and [PDF-HUL-143](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages-2#pdf-hul-143).

* Type: ErrorMessage, MalFormed
* Source location: [PdfModule.java L1599](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1599)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-143

### Message
> Document catalog Type key does not have a simple String value.

### Details
The document catalog dictionary object has a key called Type. In this error the Type is not a Simple Object. This error is related to [PDF-HUL-141](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages-2#pdf-hul-141) and [PDF-HUL-142](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages-2#pdf-hul-142).

* Type: ErrorMessage, MalFormed
* Source location: [PdfModule.java L1600](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1600)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-144

### Message
> Pages dictionary has no Type key or it has a null value.

### Details
This error message and the next two error messages ([PDF-HUL-145](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages-2#pdf-hul-145) and [PDF-HUL-146](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages-2#pdf-hul-146)) are related. They check the Pages in a Dictionary have the correct properties. PDF-HUL-144 is about Type key is missing or null.

* Type: ErrorMessage, MalFormed
* Source location: [PdfModule.java L1945](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1945)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-145

### Message
> Pages dictionary Type key does not have a simple String value.

### Details
This error message and the error messages ([PDF-HUL-144](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages-2#pdf-hul-144) and [PDF-HUL-146](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages-2#pdf-hul-146)) are related. The Type of the Page in the Directory is not a Simple Object.

* Type: ErrorMessage, MalFormed
* Source location: [PdfModule.java L1946](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1946)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-146

### Message
> Pages dictionary Type key must have value /Pages.

### Details
This error message and the error messages ([PDF-HUL-144](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages-2#pdf-hul-144) and [PDF-HUL-145](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages-2#pdf-hul-145)) are related.The value of Type is not Pages.

* Type: ErrorMessage, MalFormed
* Source location: [PdfModule.java L1944](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1944)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-147

### Message
> Page tree node not found.

### Details
This error occurs when the page tree is build.

* Type: ArrayIndexOutOfBoundsException, PdfInvalidException
* Source location: [PageTreeNode L128](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageTreeNode.java#L128)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-148

### Message
> PDF minor version number is greater than 7.

### Details
At the moment the latest version of PDF is version 1.7. The latest minor version is 7. It is defined in MAX_VALID_MAJOR_VERSION Constant.

* Type: ErrorMessage, Not Valid
* Source location: [PdfModule.java L1046](https://github.com/openpreserve/jhove/blob/8677ad043a59d93b0dbe949047ef064bc592bb08/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1046)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-149

### Message
> Invalid indirect destination - referenced object '
' cannot be found

### Details
The Destination was not found for an annotation that is referenced in the document
This error is never reported in the output, because the Message is included with [PDF-HUL-122](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages-2#pdf-hul-122).

* Type: PdfInvalidException
* Source location: [PdfModule.java L4167-L4172](https://github.com/openpreserve/jhove/blob/8677ad043a59d93b0dbe949047ef064bc592bb08/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L4167-L4172)
* Examples: [1](http://wiki.opf-labs.org/download/attachments/101613571/SIP110204_ReColl-124480_1-s2.0-S0370269317301144-main.pdf)

### Impact
Needs review

### Remediation
Needs review

## PDF-HUL-150

### Message
> Cross-reference stream must be a stream

### Details
The retrieved object must be a stream. This error can occur when the Trailer is parsed or when the Cross references are parsed.

* Type: PdfInvalidException
* Source location: [PdfModule.java L1257-L1258](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1257-L1258) and [PdfModule.java L1429-L1430](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1429-L1430)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review

