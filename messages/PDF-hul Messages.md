
## PDF-HUL-1

### Message
> Invalid destination object

### Details
An unexpected object type was found for a destination object. A destination object is expected to be an array containing a page reference, a dictionary containing such an array, or a name object leading to either of these objects.

* Type: PdfInvalidException
* Source location: [Destination.java L93](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Destination.java#L93)
* Examples: [1](https://github.com/openpreserve/jhove/files/1228422/sample.pdf), [2](http://wiki.opf-labs.org/download/attachments/101613571/ETH23915.pdf), [3](http://wiki.opf-labs.org/download/attachments/101613571/2002.pdf), [4](http://wiki.opf-labs.org/download/attachments/101613571/SIP110204_ReColl-124480_1-s2.0-S0370269317301144-main.pdf)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.2.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.3.2


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-2

### Message
> Invalid destination object

### Details
An unexpected object type was returned when resolving a destination's page reference to a page. In this case the orignal destination object was an array or dictionary that resolved to an array but didn't. A destination object is expected to be an array containing a page reference, a dictionary containing such an array, or a name object leading to either of these objects.

* Type: PdfInvalidException
* Source location: Needs review
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.2.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.3.2


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-3

### Message
> An IOException was thrown reading destination array id: \<array object id>

### Details
An IOException occured when trying to read and parse the destination array object, this indicates either a discrete issue with the destination array or a more serious issue with the PDF structure that makes looking up and retrieving the destination array impossible.It's possible a system issue, particularly low disk space, could cause the exception.

* Type: PdfInvalidException
* Source location: Needs review
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.2.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.3.2


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-4

### Message
> Missing dictionary in document node

### Details
A page or page tree node is not a dictionary. All pages and page trees should be a dictionary, which provides access to their resources and other attributes.

* Type: PdfMalformedException
* Source location: [DocNode.java L104](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/DocNode.java#L104)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.3


### Impact
The page or any pages descending from the page tree will be inaccessible and may not appear in a reader.

### Remediation
Is it possible to build a page's dictionary after the fact? Maybe iText can fix it. We (at ZBW) have an iText-Tool, which just copies each page into a new PDF. The PDF structure gets repaired by this procedure and I would guess that it would build a brand new PDF Dictionary for the PDF. I do not have any example on hand, though, so I cannot check.


## PDF-HUL-5

### Message
> Invalid Resources Entry in document

### Details
One of the objects processed when resolving the Resources dictionary was of a type not allowed by the PDF Specification, or there was an IO error when resolving the Resources dictionary. Page Tree Nodes may have an empty resource dictionary (no resources) or no entry, meaning the resources are inherited from a parent node.

* Type: PdfInvalidException
* Source location: [DocNode.java L115](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/DocNode.java#L115)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.3.3


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-6

### Message
> Invalid Font entry in Resources

### Details
An IOException occurred when reading the reference for the for Fonts dictionary found in the Resource catalog for the Page Tree Node. Resource catalogs don't need to have a Font's dictionary but this error indicates the catalogue provides a reference to one that can't be read.

* Type: PdfMalformedException
* Source location: [DocNode.java L138](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/DocNode.java#L138)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.7.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.8.3


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-7

### Message
> Malformed MediaBox in page tree

### Details
A page dictionary's "MediaBox" key value is not an array.

* Type: PdfInvalidException
* Source location: Needs review
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.8.4
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.9.5


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-8

### Message
> Malformed MediaBox in page tree

### Details
A page's "MediaBox" entry is not an array of four numbers. "MediaBox" entries must contain an array of four numbers marking the X and Y coordinates for the lower-left and upper-right corners of a rectangle, e.g. [2 2 5 5].

* Type: PdfInvalidException
* Source location: [DocNode.java L159](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/DocNode.java#L159)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.8.4
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.9.5


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-9

### Message
> Invalid file specification

### Details
Needs review

* Type: PdfInvalidException
* Source location: [FileSpecification.java L66](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/FileSpecification.java#L66)
* Examples: Needed

### References
 - PDF 1.6: Needs review
 - PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-10

### Message
> Unterminated literal in PDF file

### Details
Needs review

* Type: EOFException
* Source location: [Literal.java L164](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Literal.java#L164)
* Examples: Needed

### References
 - PDF 1.6: Needs review
 - PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-11

### Message
> Invalid character in hex string

### Details
Needs review

* Type: PdfMalformedException
* Source location: [Literal.java L358](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Literal.java#L358)
* Examples: [1](https://drive.google.com/file/d/0B04zL3V7knPNbUQ2R1k5aU9yTzg/view?usp=sharing), [2](http://wiki.opf-labs.org/download/attachments/101613571/ETH23915.pdf)

### References
 - PDF 1.6: Needs review
 - PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review

## PDF-HUL-153

### Message
> No PDF trailer

### Details
An end-of-file marker ("%%EOF") could not be found within the file's last 1024 bytes. This can often be due to a PDF file being incompletely uploaded or downloaded.

* Type: ErrorMessage, Malformed
* Source location: [PdfModule.java L937](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L937)
* Examples: [1](http://wiki.opf-labs.org/download/attachments/101613571/567147525.pdf?version=1&modificationDate=1436357226000), [2](https://office365lds-my.sharepoint.com/personal/thorsted_ldschurch_org/_layouts/15/guestaccess.aspx?guestaccesstoken=zYWzyfORm0gJ0Pu%2f31BaiaG7BAjlquvsuo5Aq3pBGks%3d&docid=0e69ca93c8e6545e5937fd26c3d14403d&rev=1)

### References
 - PDF 1.6: Needs review
 - PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-154

### Message
> Missing startxref keyword or value

### Details
Needs review

* Type: ErrorMessage, Malformed
* Source location: [PdfModule.java L994](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L994)
* Examples: Needed

### References
 - PDF 1.6: Needs review
 - PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-155

### Message
> Document catalog dictionary object number and trailer root ref number are inconsistent.

### Details
The object retrieved as the document catalog dictionary from the cross-reference table does not have the same ID as the the reference used to retrieve it. An object's ID and it's position in the cross reference table should be the same, i.e. object ID 1 is found at index 1 in the cross-reference table. This may be indicative of a broken cross-reference table.

* Type: PdfMalformedException
* Source location: Needs review
* Examples: [1](https://github.com/openpreserve/jhove/raw/rel/jhove-1.20/jhove-modules/src/test/resources/edu/harvard/hul/ois/jhove/module/pdf/doc-cat/T02-01_002_document-catalog-wrong-object-number.pdf)

### References
 - PDF 1.6: Needs review
 - PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-156

### Message
> Document catalog Type key must have value Catalog

### Details
The document catalog dictionary object must have key called type with the value Catalog.

* Type: PdfMalformedException
* Source location: Needs review
* Examples: [1](https://github.com/openpreserve/jhove/raw/rel/jhove-1.20/jhove-modules/src/test/resources/edu/harvard/hul/ois/jhove/module/pdf/doc-cat/T02-01_006_document-catalog-wrong-type-key.pdf)

### References
 - PDF 1.6: Needs review
 - PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-157

### Message
> Document catalog has no Type key or it has a null value.

### Details
Needs review

* Type: Needs review
* Source location: Needs review
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-158

### Message
> Document catalog Type key does not have a simple String value.

### Details
Needs review

* Type: Needs review
* Source location: Needs review
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-159

### Message
> Pages dictionary has no Type key or it has a null value.

### Details
Needs review

* Type: Needs review
* Source location: Needs review
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-160

### Message
> Pages dictionary Type key does not have a simple String value.

### Details
Needs review

* Type: Needs review
* Source location: Needs review
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-161

### Message
> Pages dictionary Type key must have value /Pages.

### Details
Needs review

* Type: Needs review
* Source location: Needs review
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-162

### Message
> Page tree node not found.

### Details
Needs review

* Type: Needs review
* Source location: Needs review
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-163

### Message
> PDF minor version number is greater than 7.

### Details
Needs review

* Type: Needs review
* Source location: Needs review
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-164

### Message
> Invalid indirect destination - referenced object '
' cannot be found

### Details
Needs review

* Type: Needs review
* Source location: Needs review
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review
