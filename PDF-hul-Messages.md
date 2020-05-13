
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
A file specification is processed as a dictionary that can have one of the key values 'F', 'Unix', 'DOS', or 'Mac'. The value of these keys should be a simple object with the file specification as a String value. In this case the object returned wasn't a simple object with a String value.

* Type: PdfInvalidException
* Source location: [FileSpecification.java L66](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/FileSpecification.java#L66)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.10
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.11


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-10

### Message
> Unterminated literal in PDF file

### Details
No closing parenthesis was found when processing a String literal. All String literals must be enclosed in parenthesis.

* Type: EOFException
* Source location: [Literal.java L164](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Literal.java#L164)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.2.3
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.3.4.2


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-11

### Message
> Invalid character in hex string

### Details
An invalid character was found in a hexadecimal string.A hexadecimal string is written as a sequence of hexadecimal digits (0 – 9 and either A – F or a – f) enclosed within angle brackets (\< and >). The hex string in question contains a character outside this set.

* Type: PdfMalformedException
* Source location: [Literal.java L358](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Literal.java#L358)
* Examples: [1](https://drive.google.com/file/d/0B04zL3V7knPNbUQ2R1k5aU9yTzg/view?usp=sharing), [2](http://wiki.opf-labs.org/download/attachments/101613571/ETH23915.pdf)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.2.3
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.3.4.3


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-12

### Message
> Invalid name tree

### Details
An unexpected object type was encountered when processing a name tree node. A name tree node is a dictionary that depending on its type: root, intermediate or leaf; can have up to two entries with keys "Names", "Kids", or "Limits", each of which is should have an array value. In this case either the returned value for an entry was not a PDF array, or the elements of the Limits entry array weren't Strings as per the specification.

* Type: PdfInvalidException
* Source location: [NameTreeNode.java L160](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/NameTreeNode.java#L160)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.8.5
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.9.6


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-13

### Message
> Invalid name tree

### Details
The name tree node has a "Limits" dictionary entry that returned either a null entry or the entry returned was a PDF array that didn't have element at positions [0] and [1].

* Type: PdfInvalidException
* Source location: [NameTreeNode.java L166](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/NameTreeNode.java#L166)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.8.5
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.9.6


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-14

### Message
> Invalid name tree

### Details
There was an I/O error resolving the object for one of the entries, "Names", "Kids", or "Limits" in the name tree node.

* Type: PdfInvalidException
* Source location: [NameTreeNode.java L91](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/NameTreeNode.java#L91)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.8.5
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.9.6


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-15

### Message
> Invalid name tree

### Details
The name tree node dictionary does not have one of a "Names" or "Kids" entry as per the PDF specification.

* Type: PdfInvalidException
* Source location: [NameTreeNode.java L94](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/NameTreeNode.java#L94)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.8.5
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.9.6


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-16

### Message
> Invalid name tree

### Details
An unexpected error occured while parsing a name tree node. This might have been a wrong object type, missing object, or null object encountered while processing the entries, or an I/O error resolving them.

* Type: PdfInvalidException
* Source location: [NameTreeNode.java L97](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/NameTreeNode.java#L97)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.8.5
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.9.6


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-17

### Message
> Offset out of bounds in object stream

### Details
An I/O error occurred when processing an object stream, this might have been when finding the object start or reading the object.

* Type: PdfMalformedException
* Source location: [ObjectStream.java L131](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/ObjectStream.java#L131)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.3
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.7


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-18

### Message
> Missing expected element in page number dictionary

### Details
The "Nums" entry of a page label leaf node is missing. JHOVE seems to have munged the PDF concepts of a page label and a number tree, this needs review.

* Type: PdfInvalidException
* Source location: [PageLabelNode.java L178](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageLabelNode.java#L178)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.3.1
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.8.6
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.4.2
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.9.7


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-19

### Message
> Invalid date in page number tree

### Details
An unexpected error occurred while retrieving key–value pairs from a page label node's "Nums" entry. Doesn't appear to have anything to do with dates. Needs review. Can confirm that JHOVE 1.12 gave the same message and it's nothing to do with dates.

* Type: PdfInvalidException
* Source location: [PageLabelNode.java L204](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageLabelNode.java#L204)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.3.1
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.8.6
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.4.2
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.9.7


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-20

### Message
> Invalid page label node

### Details
An unexpected error occured when processing the page lable number tree.

* Type: PdfInvalidException
* Source location: [PageLabelNode.java L88](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageLabelNode.java#L88)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.3.1
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.8.6
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.4.2
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.9.7


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-21

### Message
> Invalid Annotations

### Details
A page objects annotations entry ("Annots") is not an Array.

* Type: PdfInvalidException
* Source location: [PageObject.java L108](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageObject.java#L108)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.4
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.5
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.3.3


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-22

### Message
> Invalid Annotations

### Details
An IOException was encountered while trying to retrieve a page object's annotation array.

* Type: PdfMalformedException
* Source location: [PageObject.java L111](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageObject.java#L111)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.4
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.5
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.3.3


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-23

### Message
> Malformed ArtBox in page tree

### Details
A page object's dictionary has an "ArtBox" entry but it is not an array describing a rectangle.

* Type: PdfMalformedException
* Source location: [PageObject.java L154](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageObject.java#L154)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.2
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.8.4
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.3.3
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.9.5


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-24

### Message
> Malformed TrimBox in page tree

### Details
A page object's dictionary has a TrimBox entry but it is not an array describing a rectangle.

* Type: PdfMalformedException
* Source location: [PageObject.java L179](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageObject.java#L179)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.2
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.8.4
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.3.3
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.9.5


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-25

### Message
> Malformed BleedBox in page tree

### Details
A page object's dictionary has a "BleedBox" entry but it is not an array describing a rectangle.

* Type: PdfMalformedException
* Source location: [PageObject.java L204](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageObject.java#L204)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.2
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.8.4
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.3.3
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.9.5


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-26

### Message
> Invalid dictionary data for page

### Details
An I/O error occured when resolving a page object dictionary's contents entry, or parsing its contents.

* Type: PdfInvalidException
* Source location: [PageObject.java L74](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageObject.java#L74)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.3.3


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-27

### Message
> Invalid dictionary data for page

### Details
The value retrieved for a page object's "Contents" key is not a content stream or an array.

* Type: PdfInvalidException
* Source location: [PageObject.java L79](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageObject.java#L79)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.3.3


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-28

### Message
> Invalid dictionary data for page

### Details
A page objects's "Contents" key value is an array, but one of the elements is now a stream as per the specification.

* Type: PdfInvalidException
* Source location: [PageObject.java L82](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageObject.java#L82)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.3.3


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-29

### Message
> Invalid page tree node

### Details
A general exception was caugt when processing a page tree. Page tree node must include the entries "Type", "Parent", "Kids", and "Count" to be valid.

* Type: PdfInvalidException
* Source location: [PageTreeNode.java L138](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageTreeNode.java#L138)
* Examples: [1](https://drive.google.com/file/d/0B04zL3V7knPNU1BGNFo4OGlWZ1U/view?usp=sharing)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.3


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-30

### Message
> Improperly constructed page tree

### Details
Thrown if, when trying to get the next Page Object in a tree, we revisit a node we've already been to (circular page tree construction?).
It is mandatory to save PDF pages in a page tree, but the specification does not say that this page tree necesarily needs to be balanced. Suggestion during the OPF PDF Hackathon in 2014 was to ignore this error message. Having pages in a un-balanced page tree only has a negative effect on rendering performance, but does not lead to PDF invalidity.

* Type: PdfMalformedException
* Source location: [PageTreeNode.java L197](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageTreeNode.java#L197)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.3


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-31

### Message
> Improperly constructed page tree

### Details
Thrown if, when trying to get the next node in a page tree, we revisit a node we've already been to (circular page tree construction?).
It is mandatory to save PDF pages in a page tree, but the specification does not say that this page tree necesarily needs to be balanced. Suggestion during the OPF PDF Hackathon in 2014 was to ignore this error message. Having pages in a un-balanced page tree only has a negative effect on rendering performance, but does not lead to PDF invalidity.

* Type: PdfMalformedException
* Source location: [PageTreeNode.java L197](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageTreeNode.java#L197)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.3


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-32

### Message
> Excessive depth or infinite recursion in page tree structure

### Details
The page tree structure was too deep, JHOVE sets an arbitary limit of 100 here presumably to guard against infinite recursion.

* Type: PdfMalformedException
* Source location: [PageTreeNode.java L61](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageTreeNode.java#L61)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.3


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-33

### Message
> Improperly nested dictionary delimiters

### Details
More dictionary closing elements (">>") were encountered than dictionary opening elements ("\<\<").

* Type: PdfMalformedException
* Source location: [Parser.java L100](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Parser.java#L100)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.2.6
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.3.7


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-34

### Message
> Improperly nested array delimiters

### Details
More array closing elements ("]") were encountered than array opening elements ("[").

* Type: PdfMalformedException
* Source location: [Parser.java L109](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Parser.java#L109)
* Examples: [1](https://drive.google.com/open?id=0BzmAJJIyoZ9xdG5ib0N5TEJ0amM), [2](http://wiki.opf-labs.org/download/attachments/101613571/SIP161241_ReColl-150849_eth-31088-01.pdf)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.2.5
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.3.6


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-35

### Message
> Invalid object definition

### Details
A non numeric object ID was returned when parsing the indirect object definition. The first token must be an integer object ID.

* Type: PdfInvalidException
* Source location: [Parser.java L208](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Parser.java#L208)
* Examples: [1](http://wiki.opf-labs.org/download/attachments/101613571/SIP253613_ReColl-154468_eth-8330-02.pdf)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.2.9
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.3.10


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-36

### Message
> Invalid object definition

### Details
PDF Parser's next token (from getToken) is not a Numeric (class) Token, This is the object generation number and must be an integer. Cause in example file is missing byte in comment line after header which means that offset references in XREF are off by 1 affecting position of tokenizer. Parser.readObjectDef first reads ObjNumTok. If this object number is a double digit, the off by 1 error (in this example) only reads the tail portion of the object number (i.e. it still gets a numeric obj number, even though it's wrong). Problem occurs in this case when obj number is single digit, so no object number is read.

* Type: PdfInvalidException
* Source location: [Parser.java L226](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Parser.java#L226)
* Examples: [1](https://github.com/openpreserve/format-corpus/blob/master/pdfCabinetOfHorrors/corruptionOneByteMissing.pdf)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.2.9
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.3.10


### Impact
Example file is still renderable in Adobe Acrobat Pro

### Remediation
Correct XREF offsets.


## PDF-HUL-37

### Message
> Invalid object definition

### Details
PDF Parser's next token (from getToken) is not a keyword, the keyword "obj" is expected after the object id.

* Type: PdfInvalidException
* Source location: [Parser.java L227](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Parser.java#L227)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.2.9
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.3.10


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-38

### Message
> Invalid object definition

### Details
A keyword other than "obj" was found while parsing an indirect object definition. Indirect object definitions should follow the form "\<obj. number> \<obj. generation> obj".

* Type: PdfMalformedException
* Source location: [Parser.java L229](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Parser.java#L229)
* Examples: [1](https://wiki.dnb.de/download/attachments/93783881/corruptionOneByteMissing.pdf?version=1&modificationDate=1400574262000)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.2.9
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.3.10


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-39

### Message
> Cannot parse object

### Details
The token returned when parsing an object was not of the expected type: Array start or end, Dictionary start or end, or a simple token.

* Type: PdfMalformedException
* Source location: [Parser.java L297](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Parser.java#L297)
* Examples: Needed

### References
 - PDF 1.6: Needs review
 - PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-40

### Message
> Unexpected token in array

### Details
This appears to be an unreachable error. Needs review. I concur, the type check has already taken place.

* Type: PdfMalformedException
* Source location: [Parser.java L327](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Parser.java#L327)
* Examples: Needed

### References
 - PDF 1.6: Needs review
 - PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-41

### Message
> Malformed dictionary: Vector must contain an even number of objects, but has ...

### Details
The dictionary has an odd number of objects, so cannot have a complete set of name–value pairs. Often seen with asian characters in PDF, characters in bookmarks.

* Type: PdfMalformedException
* Source location: [Parser.java L366](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Parser.java#L366)
* Examples: [1](http://wiki.opf-labs.org/download/attachments/101613571/SIP196747_ReColl-18538_eth-25717-01.pdf)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.2.6
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.3.7


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-42

### Message
> Malformed dictionary

### Details
Unexpected error while parsing a dictionary. This is most likely caused by a null (missing) object or an object of an unexpected type when processing the dictionary.

* Type: PdfMalformedException
* Source location: [Parser.java L376](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Parser.java#L376)
* Examples: [1](https://drive.google.com/file/d/0B04zL3V7knPNYWRxUHpWYTl1emc/view?usp=sharing)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.2.6
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.3.7


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-43

### Message
> Unexpected token in dictionary

### Details
This appears to be an unreachable error. Needs review. Similar case to PDF-HUL-40 where the type check that might throw this has already been performed.

* Type: PdfMalformedException
* Source location: [Parser.java L385](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Parser.java#L385)
* Examples: Needed

### References
 - PDF 1.6: Needs review
 - PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-44

### Message
> Malformed indirect object reference

### Details
A general exception was thrown while trying to "collapse an object vector" (JHOVE speak), the most likely cause is that a missing (null) object or an object of an unexpected type was encountered while processing an object "vector".

* Type: PdfMalformedException
* Source location: [Parser.java L452](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Parser.java#L452)
* Examples: Needed

### References
 - PDF 1.6: Needs review
 - PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-45

### Message
> Malformed filter

### Details
This indicates an issue with a stream dictionary's "Filter" (or deprecated "FFilter") entry or the associated "DecodeParms" (or deprecated "FDecodeParms") entry. The "Filter" entry can be a single name or an array of names. The "DecodeParms" entry is either a single parameter dictionary accompanying a single "Filter" name, or an array of dictionaries accompanying an array of "Filter" names. Xerox Example error is based on image filters ZIP & JPEG on same image

* Type: PdfMalformedException
* Source location: [PdfStream.java L204](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PdfStream.java#L204)
* Examples: [1](https://drive.google.com/open?id=0Bxn2YxzZ-3xCU3BIeE1TcWYyckU), [2](http://wiki.opf-labs.org/download/attachments/101613571/2016_23_PDF-Rules_20160905.pdf)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.2.7
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.3.8.2


### Impact
Needs review

### Remediation
Change embedded image compression filter


## PDF-HUL-46

### Message
> Malformed ASCII number in stream

### Details
An integer object in a stream contained an invalid character. The integer must be a sequence of numberic characters that may be preceded by whitespace characters. In this case a non-whitespace character was encountered before any numeric character was encountered.

* Type: PdfMalformedException
* Source location: [Stream.java L202](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Stream.java#L202)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.2.2
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.2.9
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.3
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.3.10


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-47

### Message
> Streams may not be embedded in object streams

### Details
This is triggered when the a "stream" object is found within another stream object.

* Type: PdfMalformedException
* Source location: [StreamTokenizer.java L45](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StreamTokenizer.java#L45)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.2.7
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.6
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.3.8
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.7


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-48

### Message
> Streams may not be embedded in object streams

### Details
This is triggered when the a "stream" object is found within another stream object.

* Type: PdfMalformedException
* Source location: [StreamTokenizer.java L83](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StreamTokenizer.java#L83)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.2.7
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.6
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.3.8
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.7


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-49

### Message
> Unknown element in structure tree

### Details
The "K" (children) entry of a structure element dictionary was another dictionary. This dictionary must be one of: another nested strucuture element, marked content or an object reference, the returned dictionary was none of these.

* Type: PdfInvalidException
* Source location: [StructureElement.java L124](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureElement.java#L124)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.6
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 14.7


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-50

### Message
> Invalid structure attribute reference

### Details
There was an issue resolving the "A" attributes entry of a structure element dictionary.

* Type: PdfInvalidException
* Source location: [StructureElement.java L209](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureElement.java#L209)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.6.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 14.7.1


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-51

### Message
> Invalid structure attribute

### Details
There was an I/O error resolving one of the elements of an attributes array.

* Type: PdfInvalidException
* Source location: [StructureElement.java L228](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureElement.java#L228)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.6.1
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.6.4
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 14.7.1
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 14.7.5


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-52

### Message
> Invalid structure attribute

### Details
An attribute element that was a PdfSimpleObject wasn't a numeric revision number.

* Type: PdfInvalidException
* Source location: [StructureElement.java L240](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureElement.java#L240)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.6.1
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.6.4
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 14.7.1
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 14.7.5


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-53

### Message
> Invalid structure attribute

### Details
An element from an attributes array wasn't a dictionary or revision number object.

* Type: PdfInvalidException
* Source location: Needs review
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.6.1
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.6.4
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 14.7.1
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 14.7.5


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-54

### Message
> Structure attribute has illegal type

### Details
The value of a structure element dictionary's "A" (attributes) entry wasn't a single attributes dictionary or an array (of attribute dictionaries).

* Type: PdfInvalidException
* Source location: [StructureElement.java L252](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureElement.java#L252)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.6.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 14.7.2


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-55

### Message
> Block-level attributes in inline structure element

### Details
Attributes only applicable to a block-level structure element were found for an inline structure element.

* Type: PdfInvalidException
* Source location: [StructureElement.java L255](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureElement.java#L255)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.7.3
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.7.4
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 14.8.4
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 14.8.5


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-56

### Message
> Invalid attribute in document structure

### Details
An attribute dictionary's "Placement" value was not a name.

* Type: PdfInvalidException
* Source location: [StructureElement.java L287](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureElement.java#L287)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.7.4
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 14.8.5.4.2


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-57

### Message
> Non-standard structure type name

### Details
This checks that the structure element's structure type key ("S") value is one of the Adobe standard types. The check is currently disabled in code, and it should. The Adobe types are provided to aid interoperability between applications, but custom types are allowed. Review and remove permanently. A more sensible check would be that it was a name that confirmed to the naming standard in the PDF spec, Appendix E in the 1.6 version.

* Type: PdfInvalidException
* Source location: [StructureElement.java L330](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureElement.java#L330)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.6.1
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.6.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 14.7.2
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 14.7.3


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-58

### Message
> Invalid data in document structure tree

### Details
An I/O exception was thrown when trying to resolve a structure elements children ("K") value.

* Type: PdfInvalidException
* Source location: [StructureElement.java L85](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureElement.java#L85)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.6.1
 - PDF 1.7: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.6.1


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-59

### Message
> Invalid document structure root

### Details
A structure tree root's "Type" name value that wasn't "StructTreeRoot". The structure tree root dictionary must have a Type key whose value is the name "StructTreeRoot".

* Type: PdfInvalidException
* Source location: [StructureTree.java L168](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureTree.java#L168)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.6.1
 - PDF 1.7: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.6.1


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-60

### Message
> Invalid document structure root

### Details
The structure tree root dictionary had no key "Type" or the value was of the wrong type.

* Type: PdfInvalidException
* Source location: [StructureTree.java L175](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureTree.java#L175)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.6.1
 - PDF 1.7: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.6.1


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-61

### Message
> Invalid data in document structure root

### Details
An I/O exception was thrown when trying to resolve a reference in a structure trees children.

* Type: PdfMalformedException
* Source location: [StructureTree.java L222](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureTree.java#L222)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.6.1
 - PDF 1.7: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.6.1


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-62

### Message
> Invalid data in document structure root

### Details
The structre tree's "K" value was not a dictionary or an array. A structure tree root's children ("K") value must be a single child dictionary, or an array of such dictionaries.

* Type: PdfInvalidException
* Source location: [StructureTree.java L233](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureTree.java#L233)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.6.1
 - PDF 1.7: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.6.1


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-63

### Message
> Invalid RoleMap

### Details
If a structure tree root dictionary has a "RoleMap" value it must be a dictionary.

* Type: PdfInvalidException
* Source location: [StructureTree.java L249](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureTree.java#L249)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.6.1
 - PDF 1.7: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 10.6.1


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-64

### Message
> Unexpected EOF

### Details
Unsure if this can be triggered, seems to be a test against reading a character integer value \< 0. I suspect that the real EOF handling will be triggered as a real Java EOFException. Needs reveiw

* Type: PdfMalformedException
* Source location: [Tokenizer.java L235](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Tokenizer.java#L235)
* Examples: Needed

### References
 - PDF 1.6: Needs review
 - PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-65

### Message
> Lexical error

### Details
An invalid character was encountered when parsing the fractional part of a real numeric object.

* Type: PdfMalformedException
* Source location: [Tokenizer.java L362](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Tokenizer.java#L362)
* Examples: [1](https://www.econstor.eu/obitstream/10419/45235/1/372051162.pdf)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.2
 - PDF 1.7: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 7.3.3


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-66

### Message
> Lexical error

### Details
A dictionary is written as a sequence of key-value pairs enclosed in double angle
brackets ( \<\< ... >>). In this case JHOVE is expecting to parse a dictionary end ">>" but only a single ">" was found.

* Type: PdfMalformedException
* Source location: [Tokenizer.java L374](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Tokenizer.java#L374)
* Examples: [1](https://drive.google.com/open?id=0Bxn2YxzZ-3xCRG5fNmlMR1VNajQ)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.2
 - PDF 1.7: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 7.3.7


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-67

### Message
> Invalid character in hex string

### Details
An invalid character was found in a hexadecimal string.A hexadecimal string is written as a sequence of hexadecimal digits (0 – 9 and either A – F or a – f) enclosed within angle brackets (\< and >). The hex string in question contains a character outside this set.

* Type: PdfMalformedException
* Source location: [Tokenizer.java L808](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Tokenizer.java#L808)
* Examples: [1](https://drive.google.com/file/d/0B04zL3V7knPNbUQ2R1k5aU9yTzg/view?usp=sharing)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.2.3
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.3.4.3


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-68

### Message
> Invalid cross-reference table

### Details
An invalid first object id in a cross reference table. The first line of a "xref" cross reference trailer must be two numeric literals, separated by a space. The first is the id of the first object in the table. This must be a numeric type and it's not.

* Type: PdfInvalidException
* Source location: [PdfModule.java L1020](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1020)
* Examples: [1](http://wiki.opf-labs.org/download/attachments/101613571/SIP179680_ReColl-146381_eth-25337-01.pdf)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.4


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-69

### Message
> Invalid cross-reference table

### Details
An invalid object count in a cross reference table. The first line of a "xref" cross reference trailer must be two numeric literals, separated by a space. The second is the number of objects in the table. This must be a numeric type and it's not.

* Type: PdfInvalidException
* Source location: [PdfModule.java L1021](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1021)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.2
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.4


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-70

### Message
> Root entry missing in cross-ref stream dictionary

### Details
A cross reference streams dictionary doesn't contain the root entry required by a trailer dictionary.

* Type: PdfInvalidException
* Source location: [PdfModule.java L1035](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1035)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.7
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.8


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-71

### Message
> No file trailer

### Details
The "trailer" keyword that marks the start of the document trailer wasn't found.

* Type: ErrorMessage, Malformed
* Source location: [PdfModule.java L1060](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1060)
* Examples: [1](https://drive.google.com/open?id=0Bxn2YxzZ-3xCRnkwVXk4em1kUzg)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.4
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.5


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-72

### Message
> Invalid Prev offset in trailer dictionary

### Details
The "Prev" entry of a trailer dictionary does not reference a numeric value. Trailer "Prev" entries should specify the byte offset of the previous cross-reference section in a PDF with multiple cross-reference sections.

* Type: PdfInvalidException
* Source location: [PdfModule.java L1079](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1079)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.4
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.5


### Impact
Needs review

### Remediation
If there is only one cross-reference section in a PDF, the "Prev" entry should be removed.


## PDF-HUL-73

### Message
> Invalid Size entry in trailer dictionary

### Details
The "Size" entry of a trailer dictionary does not contain a positive numeric value. Trailer "Size" entries should specify the total number of objects in a PDF's cross-reference table.

* Type: PdfInvalidException
* Source location: [PdfModule.java L1100](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1100)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.4
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.5


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-74

### Message
> Size entry missing in trailer dictionary

### Details
Trailer has no "Size" value. Trailer "Size" entries are required to specify the total number of objects in a PDF's cross-reference table.

* Type: PdfInvalidException
* Source location: [PdfModule.java L1109](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1109)
* Examples: [1](https://drive.google.com/open?id=0Bxn2YxzZ-3xCcnhhcjZPT2JSUEU)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.4
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.5


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-75

### Message
> Root entry missing in trailer dictionary

### Details
The "Root" entry in the trailer is missing. The "Root" entry should have as its value the document's catalog dictionary, which is where you will start in order to find all the objects in the PDF. See also [PDF-HUL-85](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages-2#pdf-hul-85).

* Type: PdfInvalidException
* Source location: [PdfModule.java L1341-L1342](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/pdf-hul/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1341-L1342)
* Examples: [1](https://drive.google.com/open?id=0Bxn2YxzZ-3xCdi10RGM4Y3lqdVU)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.4
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.5


### Impact
Needs review

### Remediation
Needs review
