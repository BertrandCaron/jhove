
## PDF-HUL-1

### Message
> Invalid destination object

### Details
An unexpected object type was found for a destination object. A destination object is expected to be an array containing a page reference, a dictionary containing such an array, or a name object leading to either of these objects.

* Type: PdfInvalidException
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_1&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_2&type=code)
* Examples: [1](https://github.com/behnam2014/ssoar-gold-standard/blob/master/1-German_papers_with_reference_section_at_end_of_paper_first_group/1-pdfs/11448.pdf), [2](https://github.com/behnam2014/ssoar-gold-standard/blob/master/2-English_papers_with_reference_section_at_end_of_paper/1-pdfs/11218.pdf)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.2.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.3.2


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-3

### Message
> An IOException was thrown reading destination array id: `<array object id>`

### Details
An IOException occured when trying to read and parse the destination array object, this indicates either a discrete issue with the destination array or a more serious issue with the PDF structure that makes looking up and retrieving the destination array impossible.It's possible a system issue, particularly low disk space, could cause the exception.

* Type: PdfInvalidException
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_3&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_4&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_5&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_6&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_7&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_8&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_9&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_10&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_11&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_12&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_13&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_14&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_15&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_16&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_17&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_18&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_19&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_20&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_21&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_22&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_23&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_24&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_25&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_26&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_27&type=code)
* Examples: [1](https://github.com/qpdf/qpdf/blob/master/qpdf/qtest/qpdf/bad24.pdf)

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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_28&type=code)
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
A general exception was caught when processing a page tree. Page tree node must include the entries "Type", "Parent", "Kids", and "Count" to be valid.

* Type: PdfInvalidException
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_29&type=code)
* Examples: [1](https://drive.google.com/file/d/0B04zL3V7knPNU1BGNFo4OGlWZ1U/view?usp=sharing), [2](https://github.com/qpdf/qpdf/blob/master/qpdf/qtest/qpdf/bad34.pdf), [3](https://github.com/qpdf/qpdf/blob/master/qpdf/qtest/qpdf/big-ostream.pdf), [4](https://github.com/qpdf/qpdf/blob/master/qpdf/qtest/qpdf/compress-objstm-xref-qdf.pdf)

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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_30&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_31&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_32&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_33&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_34&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_35&type=code)
* Examples: [1](http://wiki.opf-labs.org/download/attachments/101613571/SIP253613_ReColl-154468_eth-8330-02.pdf), [2](https://github.com/qpdf/qpdf/blob/master/qpdf/qtest/qpdf/bad25.pdf)

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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_36&type=code)
* Examples: [1](https://github.com/openpreserve/format-corpus/blob/master/pdfCabinetOfHorrors/corruptionOneByteMissing.pdf), [2](https://github.com/qpdf/qpdf/blob/master/qpdf/qtest/qpdf/bad26.pdf)

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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_37&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_38&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_39&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_40&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_41&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_42&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_43&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_44&type=code)
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
This indicates an issue with a stream dictionary's "Filter" (or deprecated "FFilter") entry or the associated "DecodeParms" (or deprecated "FDecodeParms") entry. The "Filter" entry can be a single name or an array of names. The "DecodeParms" entry is either a single parameter dictionary accompanying a single "Filter" name, or an array of dictionaries accompanying an array of "Filter" names. Xerox Example error is based on image filters ZIP & JPEG on same image.
Note that for JHOVE versions up to including 1.28, this error message was also a false positive for filter arrays such as "/Filter[/FlateDecode/DCTDecode]".

* Type: PdfMalformedException
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_45&type=code)


### References
 - PDF 2.0: https://pdfa.org/resource/iso-32000-2/ | 7.4


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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_46&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_47&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_48&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_49&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_50&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_51&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_52&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_53&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_54&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_55&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_56&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_57&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_58&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_59&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_60&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_61&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_62&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_63&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_64&type=code)
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
> Invalid character in hex string

### Details
An invalid character was encountered when parsing the fractional part of a real numeric object.

* Type: PdfMalformedException
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_65&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_66&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_67&type=code)
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
An invalid first object id in a cross reference table. The first line of a "xref" cross reference trailer must be two numeric literals, separated by a space. The first is the id of the first object in the table. This must be a numeric type and it's not. This means the parsing of the trailer fails and this leads to a problem when parsing the rest of the document. With this error also [PDF-HUL-85](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages#pdf-hul-85) is associated because the document root isn't found.

* Type: PdfInvalidException
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_68&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_69&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_70&type=code)
* Examples: [1](https://github.com/qpdf/qpdf/blob/master/qpdf/qtest/qpdf/issue-106.pdf)

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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_71&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_72&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_73&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_74&type=code)
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
The "Root" entry in the trailer is missing. The "Root" entry should have as its value the document's catalog dictionary, which is where you will start in order to find all the objects in the PDF. See also [PDF-HUL-85](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages#pdf-hul-85).

* Type: PdfInvalidException
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_75&type=code)
* Examples: [1](https://drive.google.com/open?id=0Bxn2YxzZ-3xCdi10RGM4Y3lqdVU)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.4
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.5


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-76

### Message
> Trailer dictionary Info key is not an indirect reference

### Details
The "Info" entry of a trailer dictionary does not contain an indirect object reference (e.g. "1 0 R"). If an "Info" entry exists in a trailer, it should point to the document's information dictionary via an indirect object reference.

* Type: PdfinvalidException
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_76&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_77&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_78&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_79&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_80&type=code)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.7
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.8


### Impact
Needs review

### Remediation
This may fix the error, but QA may be desirable to make sure that nothing important was changed (mutool is part of [MuPDF](https://mupdf.com/)):

    $ mutool clean a.pdf b.pdf

## PDF-HUL-81

### Message
> Malformed cross-reference stream

### Details
This error doesn't seem to be reachable, there's nothing to throw an I/O exception in the try block code. needs review

* Type: ErrorMessage, Malformed
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_81&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_82&type=code)
* Examples: [1 (Comment in Cross-reference table)](https://github.com/mozilla/pdf.js/blob/master/test/pdfs/filled-background.pdf)

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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_83&type=code)
* Examples: [1](https://github.com/qpdf/qpdf/blob/master/qpdf/qtest/qpdf/bad5.pdf)

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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_84&type=code)
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
The trailer has no document catalogue entry ("Root"), or a trailer was not found, or the offset of the cross-reference table in the startxref section is wrong. The Catalog of the document contains all the references to other objects for example contents, outline, named destinations.
JHOVE's approach to the document catalog is a little scattergun. Specifically here the reference to the document catalog is null. As the examples show this error can be reached, even when similar parsing in the trailer is done earlier. When the parsing of the cross-reference fails this error is reached (Example 2) or when the Root is missing after reaching [PDF-HUL-75](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages#pdf-hul-75) the parsing continues until this error.

* Type: Error Message, Malformed
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_85&type=code)
* Examples: [1](https://drive.google.com/open?id=0Bxn2YxzZ-3xCdi10RGM4Y3lqdVU), [2](http://wiki.opf-labs.org/download/attachments/101613571/SIP179680_ReColl-146381_eth-25337-01.pdf)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.1
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.4
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.2
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.5


### Impact
Probably low in the case of a wrong offset for the cross-reference table. Most PDF readers are lax regarding object offsets.

### Remediation
In the case of a wrong offset for the cross-reference table, using `mutool clean` recalculates all offsets and may solve the problem.


## PDF-HUL-86

### Message
> No document catalog dictionary

### Details
The trailer contains a document catalogue entry ("Root") but it cannot be resolved, e.g., because the offset of the catalogue object is wrong in the cross-reference table. The Catalogue of the document contains all the references to other objects for example contents, outline, named destinations.

* Type: Error Message, Malformed
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_86&type=code)
* Examples: Needed

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.1
https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.4.4
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.2
https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.5.5


### Impact
Needs review

### Remediation
In the case of a wrong offset for the Catalog object in the cross-reference table, using `mutool clean` recalculates all offsets and may solve the problem.


## PDF-HUL-87

### Message
> File header gives version as `<header-version>`, but catalog dictionary gives version as `<catalog-version>`

### Details
The PDF version specified in the header is different from the version specified in the document catalogue dictionary.
This is OK by specification and the higher PDF version "wins" in terms of the version of the specification the document conforms to.

* Type: InfoMessage
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_87&type=code)
* Examples: [1](https://github.com/behnam2014/ssoar-gold-standard/blob/master/1-German_papers_with_reference_section_at_end_of_paper_first_group/1-pdfs/11448.pdf)

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
The document's PDF version, from EITHER the file header or document catalog dictionary, cannot be recognised as a number, this doesn't apply to the document catalog alone, misleading and needs review, or at least MUST be sure that the header version parses properly.

* Type: PdfInvalidException
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_88&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_89&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_90&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_91&type=code)
* Examples: Needed

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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_92&type=code)
* Examples: Needed

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
The "V" entry of an encryption dictionary, which specifies the encryption algorithm used, has an invalid value. It must be a number value from 0-4 inclusive. Note that the PDF 1.7 specification seems to disbar the "3" option also. From PDF extension level 3 onward a new value number 5 is added (for the algorithm AESV3)

* Type: PdfInvalidException
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_93&type=code)
* Examples: Example with V value of 5: [1](https://github.com/qpdf/qpdf/blob/master/qpdf/qtest/qpdf/copied-positive-P.pdf)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.2
- Adobe® Supplement to the ISO 32000: https://www.adobe.com/content/dam/acom/en/devnet/acrobat/pdfs/adobe_supplement_iso32000.pdf | 3.5.2


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-94

### Message
> Unexpected exception `<exception-details>`

### Details
Unexpected error while parsing the document information dictionary, most likely a missing (null) object or object of the wrong type encountered while resolving the dictionary object or processing its entries.

* Type: ErrorMessage
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_94&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_95&type=code)
* Examples: [1](http://wiki.opf-labs.org/download/attachments/101613571/SIP253613_ReColl-154468_eth-8330-02.pdf)

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

* Type: PdfInvalidException, Malformed
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_96&type=code)
* Examples: Needed

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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_97&type=code)
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
> Unexpected exception `<exception-details>`

### Details
Unexpected error while parsing the document page tree.

* Type: ErrorMessage, Malformed
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_98&type=code)
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
> Unexpected exception `<exception-details>`

### Details
Unexpected error while parsing the document page label tree.

* Type: ErrorMessage
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_99&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_100&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_101&type=code)
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
> Unexpected exception `<exception-details>`

### Details
Unexpected error while parsing a page objects external content streams. This is a single stream or an array of streams that is the value of the optional "Contents" key.

* Type: ErrorMessage, Malformed
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_102&type=code)
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
> Unexpected exception `<exception-details>`

### Details
Unexpected error while parsing and analysing images embedded in the PDF. This a a very general catch and might benefit from been more specific, with more errors and more descriptive messages.

* Type: ErrorMessage, Malformed
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_103&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_104&type=code)
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
> Fonts exist, but are not displayed; to display remove param value of f from the config file

### Details
This is just a message to say that font information is available but not reported. The configuration needs to be changed to see the font information (See Remediation)

* Type: InfoMessage
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_105&type=code)
* Examples: Not applicable, is jHove configuration

### References
 - PDF 1.6: Not applicable, is jHove configuration
 - PDF 1.7: Not applicable, is jHove configuration

### Impact
No impact. This is because a configuration option prevent the reporting of font information.

### Remediation
The configuration file can be [changed](http://jhove.openpreservation.org/modules/pdf/) to show fonts. The configuration contains: `<param>f</param>` to prevent the reporting of fonts.


## PDF-HUL-106

### Message
> Unexpected error in findFonts

### Details
Some fonts in the document are missing / unreadable in the file. Needs review.

* Type: ErrorMessage, Malformed
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_106&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_107&type=code)
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
This error is probably never shown, as the error is catched in [PDF-HUL-110](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages#pdf-hul-110).

* Type: PdfMalformedException
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_108&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_109&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_110&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_111&type=code)
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
> Page information is not displayed; to display remove param value of p from the config file

### Details
This just informs the user that JHOVE has skipped storing and reporting the page level properties and that it can be re-enabled by config. If the parameter p is added in the configuration the Pages are ignored `<param>p</param>`

* Type: InfoMessage
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_112&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_113&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_114&type=code)
* Examples: [1](https://github.com/mozilla/pdf.js/blob/master/test/pdfs/annotation-text-without-popup.pdf)

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
> Annotations exist, but are not displayed; to display remove param value of a from the config file

### Details
This just informs the user that JHOVE has skipped storing and reporting the annotation level properties and that it can be re-enabled by config. This is not an error, but a configuration option. By adding: `<param>a</param>` to the configuration of JHOVE, the annotations are not displayed.

* Type: InfoMessage
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_115&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_116&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_117&type=code)
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
JHOVE has calculated a page position value of less than 1. PDF's page numbering consists of a number tree whose elements are labelling ranges stored as pdf dictionaries. JHOVE's logic around page label sequences is a little confusing, this seems to be an effort to  track a "natural" sequence number, that's checked against pages accumulated in other ranges. I don't believe that this error can be thrown as it's caught by the next general catch and changed to [PDF-HUL-119](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages#pdf-hul-119).

* Type: PdfInvalidException
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_118&type=code)
* Examples: See examples in [PDF-HUL-119](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages#pdf-hul-119)

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
Unexpected error while parsing the page label structure. This is a general catch with multiple potential causes including: an I/O exception reading an object or encountering a missing (null) object or an object of an unexpected type. This error is also shown when actually the problem is [PDF-HUL-118](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages#pdf-hul-118). All the Examples in this error are examples from this. The problem in these files are PDF-HUL-118, but instead PDF-HUL-119 is reported.

* Type: PdfMalformedException
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_119&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_120&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_121&type=code)
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
> General Exception: `<exception-details>`

### Details
This needs review, it's a horrible cludge that eats and PDFExceptions thrown while processing destination objects and always sets the invalid flag. Seems dubious behaviour.
It, for example, reports the error "Invalid indirect destination - referenced object ' ' cannot be found". This error comes from [PDF-HUL-149](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages#pdf-hul-149).

* Type: ErrorMessage, An Exception for all the messages coming from adding Destination to Property list
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_122&type=code)
* Examples: [1](http://wiki.opf-labs.org/download/attachments/101613571/SIP110204_ReColl-124480_1-s2.0-S0370269317301144-main.pdf)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.2.1
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.3.2


### Impact
Impact is described in [a blogpost](https://openpreservation.org/blogs/destination-null-one-of-the-many-cases-of-pdf-hul-122/)

### Remediation
Remediation is described in [a blogpost](https://openpreservation.org/blogs/destination-null-one-of-the-many-cases-of-pdf-hul-122/)


## PDF-HUL-123

### Message
> Outlines contain recursive references

### Details
An outline dictionary's "Next" entry points to itself. This would cause a recursive loop so JHOVE warns and breaks out. The PDF 1.6 specification doesn't explicitly disallow this.

* Type: InfoMessage
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_123&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_124&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_125&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_126&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_127&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_128&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_129&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_130&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_131&type=code)
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
> Outlines exist, but are not displayed; to display remove param value of o from the config file

### Details
This is just a message to say that outline information isn't been reported. It is information about the `[jHove configuration](http://jhove.openpreservation.org/modules/pdf/)`. If the parameter "o" is added the Document Outline will be suppressed: `<param>o</param>`.

* Type: InfoMessage
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_132&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_133&type=code)
* Examples: [1](https://drive.google.com/file/d/0B04zL3V7knPNU1BGNFo4OGlWZ1U/view?usp=sharing), [2](https://github.com/angea/PDF101/blob/master/handcoded/102_A-vectorized.pdf), [3](https://github.com/mozilla/pdf.js/blob/master/test/pdfs/bug1146106.pdf)

### References
 - PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.8.3
 - PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.9.4
 - [A date with PDF-HUL-133 “Improperly formed date”](https://openpreservation.org/blogs/a-date-with-pdf-hul-133-improperly-formed-date/?q=1) by Micky Lindlar

### Impact
Minor. This is "just" bad formatting in metadata. It violates the specification and possibly signals a useless timestamp in metadata, but usually won't keep the file from being displayed.

### Remediation
It may happen that after a "cure" there is no information about the creation date any more, if there are no XMP metadata in the original PDF. The date may be written poorly enough that some tools cannot recognize the date and so do not translate it into the new/corrected PDF.


## PDF-HUL-134

### Message
> Cross-reference tables are broken

### Details
Another check to prevent an endless loop when processing the cross references. This is flagged the current cross reference is the same as the previous one. The program logic is a little dark here involving state across a few member variables.

* Type: ErrorMessage, MalFormed
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_134&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_135&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_136&type=code)
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
> No PDF header found

### Details
The PDF header could not be found within the file's first 1024 bytes. This can also appear when there are certain kinds of junk data before the header, even if the header exists within the first 1024 bytes.
Should a file be classified as malformed if there is any non-zero data before the header, instead of only certain kinds?
The implementation notes in the second accompanying PDF 1.6 reference has more to say about headers. The PDF 1.7 spec has no equivalent note.

* Type: ErrorMessage, Malformed
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_137&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_138&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_139&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_140&type=code)
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
The document catalog dictionary object must have key called type with the value Catalog. This error is related to [PDF-HUL-142](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages#pdf-hul-142) and [PDF-HUL-143](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages#pdf-hul-143).

* Type: ErrorMessage, MalFormed
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_141&type=code)
* Examples: [1](https://github.com/openpreserve/jhove/raw/rel/jhove-1.20/jhove-modules/src/test/resources/edu/harvard/hul/ois/jhove/module/pdf/doc-cat/T02-01_006_document-catalog-wrong-type-key.pdf), [2](https://drive.google.com/open?id=0Bxn2YxzZ-3xCZ0wyOWxWSHk2Zlk)

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
The document catalog dictionary object must have key called type. In this error the Type does not exist and is null. This error is related to [PDF-HUL-141](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages#pdf-hul-141) and [PDF-HUL-143](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages#pdf-hul-143).

* Type: ErrorMessage, MalFormed
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_142&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-143

### Message
> Document catalog Type key does not have a simple String value.

### Details
The document catalog dictionary object has a key called Type. In this error the Type is not a Simple Object. This error is related to [PDF-HUL-141](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages#pdf-hul-141) and [PDF-HUL-142](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages#pdf-hul-142).

* Type: ErrorMessage, MalFormed
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_143&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-144

### Message
> Pages dictionary has no Type key or it has a null value.

### Details
This error message and the next two error messages ([PDF-HUL-145](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages#pdf-hul-145) and [PDF-HUL-146](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages#pdf-hul-146)) are related. They check the Pages in a Dictionary have the correct properties. PDF-HUL-144 is about Type key is missing or null.

* Type: ErrorMessage, MalFormed
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_144&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-145

### Message
> Pages dictionary Type key does not have a simple String value.

### Details
This error message and the error messages ([PDF-HUL-144](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages#pdf-hul-144) and [PDF-HUL-146](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages#pdf-hul-146)) are related. The Type of the Page in the Directory is not a Simple Object.

* Type: ErrorMessage, MalFormed
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_145&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-146

### Message
> Pages dictionary Type key must have value /Pages.

### Details
This error message and the error messages ([PDF-HUL-144](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages#pdf-hul-144) and [PDF-HUL-145](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages#pdf-hul-145)) are related.The value of Type is not Pages.

* Type: ErrorMessage, MalFormed
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_146&type=code)
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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_147&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-148

### Message
> PDF minor version number is out of valid range.

### Details
At the moment the latest version of PDF is version 2.0. The highest minor version is 7, for PDF 1.7. It is defined in MAX_VALID_MAJOR_VERSION Constant.

* Type: ErrorMessage, Not Valid
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_148&type=code)
* Examples: [1](https://github.com/qpdf/qpdf/blob/master/qpdf/qtest/qpdf/extensions-adbe-force-1.8.5.pdf), [2](https://github.com/qpdf/qpdf/blob/master/qpdf/qtest/qpdf/extensions-adbe-other-force-1.8.5.pdf)

### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-149

### Message
> Invalid indirect destination - referenced object `<object>` cannot be found

### Details
The Destination was not found for an annotation that is referenced in the document
This error is never reported in the output, because the Message is included with [PDF-HUL-122](https://github.com/openpreserve/jhove/wiki/PDF-hul-Messages#pdf-hul-122).

* Type: PdfInvalidException
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_149&type=code)
* Examples: [1](http://wiki.opf-labs.org/download/attachments/101613571/SIP110204_ReColl-124480_1-s2.0-S0370269317301144-main.pdf), [2 see Isartor test suite manual.pdf](https://www.pdfa.org/isartor-test-suite-terms-of-use-download/)

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
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_150&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review

## PDF-HUL-151

### Message
> Unexpected error occurred while attempting to read the cross-reference table

### Details
A catch all error for the cross-reference table.

* Type: Exception
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_151&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review

## PDF-HUL-152

### Message
> Encrypt dictionary has no OE key or it has a null value

### Details
OE key is a manditory key when using an encrypted dictionary. This is part of a supplement of PDF specification for ISO 32000. According to the [documentation](https://web.archive.org/web/20220306152229/https://www.adobe.com/content/dam/acom/en/devnet/pdf/adobe_supplement_iso32000.pdf), it is based on owner and user passwords and it is used in computing encryption key.

* Type: PdfInvalidException
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_152&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review

## PDF-HUL-153

### Message
> Encrypt dictionary has no UE key or it has a null value

### Details
UE key is a manditory key when using an encrypted dictionary. This is part of a supplement of PDF specification for ISO 32000. According to the [documentation](https://web.archive.org/web/20220306152229/https://www.adobe.com/content/dam/acom/en/devnet/pdf/adobe_supplement_iso32000.pdf), it is based on user passwords and it is used in computing encryption key.

* Type: PdfInvalidException
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_153&type=code)
* Examples: Needed

### Impact
Needs review

### Remediation
Needs review

## PDF-HUL-154

### Message
> Unknown Developer Prefix

### Details
The Extension information in PDF Specification (ISO 32000) has information about developer key of the extension. The Developer Key is mandatory and needs to be included in the [specified list](https://github.com/adobe/pdf-names-list).

* Type: Error Message
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_154&type=code)
* Examples: [1](https://github.com/qpdf/qpdf/blob/main/qpdf/qtest/qpdf/extensions-adbe-other.pdf)

### Impact
The impact is not large, because this is part of the extension support in PDF. An unknown developer prefix could mean an unsupported extension. This means that this extension information is not shown in the output.
The second possibility is that the Developer Prefix information is not up-to-date. The table cited above needs to be updated.

### Remediation
Update the Developer Prefix table in jHove

## PDF-HUL-155

### Message
> Error parsing mandatory version number, PDF header too short: "{0}"

### Details
NEEDS REVIEW

* Type: Error Message
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_155&type=code)
* Examples: NEEDS REVIEW

### Impact
NEEDS REVIEW

### Remediation
NEEDS REVIEW

## PDF-HUL-156

### Message
> Extension can't be defined as an indirect reference

### Details
NEEDS REVIEW

* Type: Error Message
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_156&type=code)
* Examples: NEEDS REVIEW

### Impact
NEEDS REVIEW

### Remediation
NEEDS REVIEW

## PDF-HUL-157

### Message
> Unexpected exception `<exception-details>`

### Details
NEEDS REVIEW

* Type: Error Message
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_157&type=code)
* Examples: NEEDS REVIEW

### Impact
NEEDS REVIEW

### Remediation
NEEDS REVIEW

## PDF-HUL-158

### Message
> Unexpected exception `<exception-details>`

### Details
NEEDS REVIEW

* Type: Error Message
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_158&type=code)
* Examples: NEEDS REVIEW

### Impact
NEEDS REVIEW

### Remediation
NEEDS REVIEW

## PDF-HUL-159

### Message
> Image height and width are mandatory properties

### Details
NEEDS REVIEW

* Type: Error Message
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_159&type=code)
* Examples: NEEDS REVIEW

### Impact
NEEDS REVIEW

### Remediation
NEEDS REVIEW

## PDF-HUL-160

### Message
> IO Exception reading PDF Header

### Details
NEEDS REVIEW

* Type: Error Message
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_160&type=code)
* Examples: NEEDS REVIEW

### Impact
NEEDS REVIEW

### Remediation
NEEDS REVIEW

## PDF-HUL-161

### Message
> PDF major version number should be 1.x or 2.x

### Details
The numbers 1 and 2 are the only legal values for PDF major version numbers which range as follows: 1.0 - 1.7 and 2.0.

* Type: Error Message
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_161&type=code)
* Examples: NEEDS REVIEW

### Impact
NEEDS REVIEW

### Remediation
NEEDS REVIEW

## PDF-HUL-162

### Message
> Malformed PDF version number

### Details
Having found the beginning of the PDF header JHOVE uses a regex pattern to try to parse the version number. The pattern expects a digit followed by a period, then another digit, e.g. `(\d)\.(\d)`. This message indicates that the pattern wasn't found.

* Type: Error Message
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_162&type=code)
* Examples: NEEDS REVIEW

### Impact
NEEDS REVIEW

### Remediation
NEEDS REVIEW

## PDF-HUL-163

### Message
> IO Exception reading text stream

### Details
NEEDS REVIEW

* Type: Error Message
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_163&type=code)
* Examples: NEEDS REVIEW

### Impact
NEEDS REVIEW

### Remediation
NEEDS REVIEW

## PDF-HUL-164

### Message
> Unbalanced parentheses in text stream

### Details
NEEDS REVIEW

* Type: Error Message
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_164&type=code)
* Examples: NEEDS REVIEW

### Impact
NEEDS REVIEW

### Remediation
NEEDS REVIEW

## PDF-HUL-165

### Message
> Object number exceeds the number of objects reported in the trailer Size entry
> Object number {0} + 1 is greater than trailer.Size {1}

### Details
NEEDS REVIEW

* Type: Error Message
* Source location: [Search Source](https://github.com/search?q=repo%3Aopenpreserve%2Fjhove%20PDF_HUL_165&type=code)
* Examples: NEEDS REVIEW

### Impact
NEEDS REVIEW

### Remediation
NEEDS REVIEW
