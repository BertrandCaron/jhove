
## PDF-HUL-1

### Message
> Invalid destination object

### Details
An unexpected object type was found for a destination object. A destination object is expected to be an array containing a page reference, a dictionary containing such an array, or a name object leading to either of these objects.

* Type: PdfInvalidException
* Source location: [Destination.java L93](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Destination.java#L93)
* Examples: [1](https://github.com/openpreserve/jhove/files/1228422/sample.pdf), [2](http://wiki.opf-labs.org/download/attachments/101613571/ETH23915.pdf), [3](http://wiki.opf-labs.org/download/attachments/101613571/2002.pdf), [4](http://wiki.opf-labs.org/download/attachments/101613571/SIP110204_ReColl-124480_1-s2.0-S0370269317301144-main.pdf)

### References
PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.2.1
PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.3.2


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
PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.2.1
PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.3.2


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
PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 8.2.1
PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 12.3.2


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
PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.2
PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.3


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
PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.6.2
PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.7.3.3


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
PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.7.2
PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.8.3


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
PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.8.4
PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.9.5


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
PDF 1.6: https://wwwimages2.adobe.com/content/dam/acom/en/devnet/pdf/pdf_reference_archive/PDFReference16.pdf | 3.8.4
PDF 1.7: https://www.adobe.com/content/dam/acom/en/devnet/pdf/pdfs/PDF32000_2008.pdf | 7.9.5


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
PDF 1.6: Needs review
PDF 1.7: Needs review


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
PDF 1.6: Needs review
PDF 1.7: Needs review


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
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-12

### Message
> Invalid name tree

### Details
Needs review

* Type: PdfInvalidException
* Source location: [NameTreeNode.java L160](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/NameTreeNode.java#L160)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-13

### Message
> Invalid name tree

### Details
Needs review

* Type: PdfInvalidException
* Source location: [NameTreeNode.java L166](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/NameTreeNode.java#L166)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-14

### Message
> Invalid name tree

### Details
A name tree node's "Limits", "Kids", or "Names" dictionary entry could not be resolved to an array.

* Type: PdfInvalidException
* Source location: [NameTreeNode.java L91](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/NameTreeNode.java#L91)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-15

### Message
> Invalid name tree

### Details
Needs review

* Type: PdfInvalidException
* Source location: [NameTreeNode.java L94](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/NameTreeNode.java#L94)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-16

### Message
> Invalid name tree

### Details
An unexpected error occured while parsing a name tree node.

* Type: PdfInvalidException
* Source location: [NameTreeNode.java L97](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/NameTreeNode.java#L97)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-17

### Message
> Offset out of bounds in object stream

### Details
Needs review

* Type: PdfMalformedException
* Source location: [ObjectStream.java L131](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/ObjectStream.java#L131)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-18

### Message
> Missing expected element in page number dictionary

### Details
The "Nums" entry of a page label leaf node is missing.

* Type: PdfInvalidException
* Source location: [PageLabelNode.java L178](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageLabelNode.java#L178)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-19

### Message
> Invalid date in page number tree

### Details
An unexpected error occurred while retrieving key–value pairs from a page label node's "Nums" entry. Doesn't appear to have anything to do with dates. Needs review.

* Type: PdfInvalidException
* Source location: [PageLabelNode.java L204](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageLabelNode.java#L204)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-20

### Message
> Invalid page label node

### Details
Needs review

* Type: PdfInvalidException
* Source location: [PageLabelNode.java L88](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageLabelNode.java#L88)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-21

### Message
> Invalid Annotations

### Details
A page's annotations entry ("Annots") cannot be resolved to an array.

* Type: PdfInvalidException
* Source location: [PageObject.java L108](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageObject.java#L108)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-22

### Message
> Invalid Annotations

### Details
An IOException was encountered while trying to retrieve a page's annotation array.

* Type: PdfMalformedException
* Source location: [PageObject.java L111](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageObject.java#L111)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-23

### Message
> Malformed ArtBox in page tree

### Details
Throws a PDFException if there is an ArtBox but it is not a rectangle.

* Type: PdfMalformedException
* Source location: [PageObject.java L154](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageObject.java#L154)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-24

### Message
> Malformed TrimBox in page tree

### Details
Throws a PDFException if there is an TrimBox but it is not a rectangle.

* Type: PdfMalformedException
* Source location: [PageObject.java L179](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageObject.java#L179)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-25

### Message
> Malformed BleedBox in page tree

### Details
Throws a PDFException if there is an BleedBox but it is not a rectangle.

* Type: PdfMalformedException
* Source location: [PageObject.java L204](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageObject.java#L204)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-26

### Message
> Invalid dictionary data for page

### Details
A page's "Contents" entry contains neither a stream nor an array of streams.

* Type: PdfInvalidException
* Source location: [PageObject.java L74](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageObject.java#L74)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-27

### Message
> Invalid dictionary data for page

### Details
Needs review

* Type: PdfInvalidException
* Source location: [PageObject.java L79](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageObject.java#L79)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-28

### Message
> Invalid dictionary data for page

### Details
Needs review

* Type: PdfInvalidException
* Source location: [PageObject.java L82](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageObject.java#L82)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-29

### Message
> Invalid dictionary data for page

### Details
Needs review

* Type: PdfMalformedException
* Source location: [PageObject.java L85](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageObject.java#L85)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-30

### Message
> Invalid page tree node

### Details
Page tree node must include the entries "Type", "Parent", "Kids", and "Count" to be valid.

* Type: PdfInvalidException
* Source location: [PageTreeNode.java L138](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageTreeNode.java#L138)
* Examples: [1](https://drive.google.com/file/d/0B04zL3V7knPNU1BGNFo4OGlWZ1U/view?usp=sharing)

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-31

### Message
> Improperly constructed page tree

### Details
Thrown if, when trying to get the next Page Object in a tree, we revisit a node we've already been to (circular page tree construction?).
It is mandatory to save PDF pages in a page tree, but the specification does not say that this page tree necesarily needs to be balanced. Suggestion during the OPF PDF Hackathon in 2014 was to ignore this error message. Having pages in a un-balanced page tree only has a negative effect on rendering performance, but does not lead to PDF invalidity.

* Type: PdfMalformedException
* Source location: [PageTreeNode.java L197](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageTreeNode.java#L197)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-32

### Message
> Excessive depth or infinite recursion in page tree structure

### Details
Needs review

* Type: PdfMalformedException
* Source location: [PageTreeNode.java L61](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PageTreeNode.java#L61)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


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
PDF 1.6: Needs review
PDF 1.7: Needs review


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
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-35

### Message
> Invalid object definition

### Details
Needs review

* Type: PdfInvalidException
* Source location: [Parser.java L208](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Parser.java#L208)
* Examples: [1](http://wiki.opf-labs.org/download/attachments/101613571/SIP253613_ReColl-154468_eth-8330-02.pdf)

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-36

### Message
> Invalid object definition

### Details
PDF Parser's next token (from getToken) is not a Numeric (class) Token. Cause in example file is missing byte in comment line after header which means that offset references in XREF are off by 1 affecting position of tokenizer. Parser.readObjectDef first reads ObjNumTok. If this object number is a double digit, the off by 1 error (in this example) only reads the tail portion of the object number (i.e. it still gets a numeric obj number, even though it's wrong). Problem occurs in this case when obj number is single digit, so no object number is read.

* Type: PdfInvalidException
* Source location: [Parser.java L226](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Parser.java#L226)
* Examples: [1](https://github.com/openpreserve/format-corpus/blob/master/pdfCabinetOfHorrors/corruptionOneByteMissing.pdf)

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Example file is still renderable in Adobe Acrobat Pro

### Remediation
Correct XREF offsets.


## PDF-HUL-37

### Message
> Invalid object definition

### Details
PDF Parser's next token (from getToken) is not a Keyword (class) Token.

* Type: PdfInvalidException
* Source location: [Parser.java L227](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Parser.java#L227)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


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
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-39

### Message
> Cannot parse object

### Details
Needs review

* Type: PdfMalformedException
* Source location: [Parser.java L297](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Parser.java#L297)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-40

### Message
> Unexpected token in array

### Details
This appears to be an unreachable error. Needs review.

* Type: PdfMalformedException
* Source location: [Parser.java L327](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Parser.java#L327)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


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
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-42

### Message
> Malformed dictionary

### Details
Unexpected error while parsing a dictionary.

* Type: PdfMalformedException
* Source location: [Parser.java L376](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Parser.java#L376)
* Examples: [1](https://drive.google.com/file/d/0B04zL3V7knPNYWRxUHpWYTl1emc/view?usp=sharing)

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-43

### Message
> Unexpected token in dictionary

### Details
This appears to be an unreachable error. Needs review.

* Type: PdfMalformedException
* Source location: [Parser.java L385](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Parser.java#L385)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-44

### Message
> Malformed indirect object reference

### Details
Needs review

* Type: PdfMalformedException
* Source location: [Parser.java L452](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Parser.java#L452)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-45

### Message
> Malformed filter

### Details
A filter has to be either an instance of the PdfDictionary or of the PdfArray. Otherwise, it is malformed. (To my humble understanding, needs to be checked.) Xerox Example error is based on image filters ZIP & JPEG on same image

* Type: PdfMalformedException
* Source location: [PdfStream.java L204](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/PdfStream.java#L204)
* Examples: [1](https://drive.google.com/open?id=0Bxn2YxzZ-3xCU3BIeE1TcWYyckU), [2](http://wiki.opf-labs.org/download/attachments/101613571/2016_23_PDF-Rules_20160905.pdf)

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Change embedded image compression filter


## PDF-HUL-46

### Message
> Malformed ASCII number in stream

### Details
Needs review

* Type: PdfMalformedException
* Source location: [Stream.java L202](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Stream.java#L202)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-47

### Message
> Streams may not be embedded in object streams

### Details
Needs review

* Type: PdfMalformedException
* Source location: [StreamTokenizer.java L45](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StreamTokenizer.java#L45)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-48

### Message
> Streams may not be embedded in object streams

### Details
Needs review

* Type: PdfMalformedException
* Source location: [StreamTokenizer.java L83](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StreamTokenizer.java#L83)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-49

### Message
> Unknown element in structure tree

### Details
Needs review

* Type: PdfInvalidException
* Source location: [StructureElement.java L124](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureElement.java#L124)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-50

### Message
> Invalid structure attribute reference

### Details
Needs review

* Type: PdfInvalidException
* Source location: [StructureElement.java L209](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureElement.java#L209)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-51

### Message
> Invalid structure attribute

### Details
Needs review

* Type: PdfInvalidException
* Source location: [StructureElement.java L228](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureElement.java#L228)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-52

### Message
> Invalid structure attribute

### Details
Needs review

* Type: PdfInvalidException
* Source location: [StructureElement.java L240](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureElement.java#L240)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-53

### Message
> Structure attribute has illegal type

### Details
Needs review

* Type: PdfInvalidException
* Source location: [StructureElement.java L252](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureElement.java#L252)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-54

### Message
> Block-level attributes in inline structure element

### Details
Needs review

* Type: PdfInvalidException
* Source location: [StructureElement.java L255](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureElement.java#L255)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-55

### Message
> Invalid attribute in document structure

### Details
Needs review

* Type: PdfInvalidException
* Source location: [StructureElement.java L287](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureElement.java#L287)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-56

### Message
> Non-standard structure type name

### Details
Needs review

* Type: PdfInvalidException
* Source location: [StructureElement.java L330](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureElement.java#L330)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-57

### Message
> Invalid data in document structure tree

### Details
Needs review

* Type: PdfInvalidException
* Source location: [StructureElement.java L85](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureElement.java#L85)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-58

### Message
> Invalid document structure root

### Details
Needs review

* Type: PdfInvalidException
* Source location: [StructureTree.java L168](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureTree.java#L168)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-59

### Message
> Invalid document structure root

### Details
Needs review

* Type: PdfInvalidException
* Source location: [StructureTree.java L175](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureTree.java#L175)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-60

### Message
> Invalid data in document structure root

### Details
Needs review

* Type: PdfMalformedException
* Source location: [StructureTree.java L222](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureTree.java#L222)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-61

### Message
> Invalid data in document structure root

### Details
Needs review

* Type: PdfInvalidException
* Source location: [StructureTree.java L233](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureTree.java#L233)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-62

### Message
> Invalid RoleMap

### Details
Needs review

* Type: PdfInvalidException
* Source location: [StructureTree.java L249](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/StructureTree.java#L249)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-63

### Message
> Unexpected EOF

### Details
Needs review

* Type: PdfMalformedException
* Source location: [Tokenizer.java L235](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Tokenizer.java#L235)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-64

### Message
> Lexical error

### Details
Needs review

* Type: PdfMalformedException
* Source location: [Tokenizer.java L362](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Tokenizer.java#L362)
* Examples: [1](https://www.econstor.eu/obitstream/10419/45235/1/372051162.pdf)

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-65

### Message
> Lexical error

### Details
Needs review

* Type: PdfMalformedException
* Source location: [Tokenizer.java L374](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Tokenizer.java#L374)
* Examples: [1](https://drive.google.com/open?id=0Bxn2YxzZ-3xCRG5fNmlMR1VNajQ)

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-66

### Message
> Invalid character in hex string

### Details
Needs review

* Type: PdfMalformedException
* Source location: [Tokenizer.java L808](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/Tokenizer.java#L808)
* Examples: [1](https://drive.google.com/file/d/0B04zL3V7knPNbUQ2R1k5aU9yTzg/view?usp=sharing)

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-67

### Message
> Invalid cross-reference table

### Details
Needs review

* Type: PdfInvalidException
* Source location: [PdfModule.java L1020](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1020)
* Examples: [1](http://wiki.opf-labs.org/download/attachments/101613571/SIP179680_ReColl-146381_eth-25337-01.pdf)

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-68

### Message
> Invalid cross-reference table

### Details
Needs review

* Type: PdfInvalidException
* Source location: [PdfModule.java L1021](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1021)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-69

### Message
> Root entry missing in cross-ref stream dictionary

### Details
Needs review

* Type: PdfInvalidException
* Source location: [PdfModule.java L1035](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1035)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-70

### Message
> No file trailer

### Details
Needs review

* Type: ErrorMessage, Malformed
* Source location: [PdfModule.java L1060](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1060)
* Examples: [1](https://drive.google.com/open?id=0Bxn2YxzZ-3xCRnkwVXk4em1kUzg)

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-71

### Message
> Invalid Prev offset in trailer dictionary

### Details
The "Prev" entry of a trailer dictionary does not reference a numeric value. Trailer "Prev" entries should specify the byte offset of the previous cross-reference section in a PDF with multiple cross-reference sections.

* Type: PdfInvalidException
* Source location: [PdfModule.java L1079](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1079)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
If there is only one cross-reference section in a PDF, the "Prev" entry should be removed.


## PDF-HUL-72

### Message
> Invalid Size entry in trailer dictionary

### Details
The "Size" entry of a trailer dictionary does not contain a numeric value. Trailer "Size" entries should specify the total number of objects in a PDF's cross-reference table.

* Type: PdfInvalidException
* Source location: [PdfModule.java L1100](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1100)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-73

### Message
> Size entry missing in trailer dictionary

### Details
Trailer has no "Size" value. Trailer "Size" entries are required to specify the total number of objects in a PDF's cross-reference table.

* Type: PdfInvalidException
* Source location: [PdfModule.java L1109](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1109)
* Examples: [1](https://drive.google.com/open?id=0Bxn2YxzZ-3xCcnhhcjZPT2JSUEU)

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-74

### Message
> Root entry missing in trailer dictionary

### Details
The "Root" entry in the trailer is missing. The "Root" entry should have as its value the document's catalog dictionary, which is where you will start in order to find all the objects in the PDF.

* Type: PdfInvalidException
* Source location: [PdfModule.java L1114](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1114)
* Examples: [1](https://drive.google.com/open?id=0Bxn2YxzZ-3xCdi10RGM4Y3lqdVU)

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-75

### Message
> Trailer dictionary Info key is not an indirect reference

### Details
The "Info" entry of a trailer dictionary does not contain an indirect object reference (e.g. "1 0 R"). If an "Info" entry exists in a trailer, it should point to the document's information dictionary via an indirect object reference.

* Type: PdfinvalidException
* Source location: [PdfModule.java L1124](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1124)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-76

### Message
> Invalid ID in trailer

### Details
Needs review

* Type: PDfInvalidException
* Source location: [PdfModule.java L1139](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1139)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-77

### Message
> Invalid ID in trailer

### Details
Needs review

* Type: PDfInvalidException
* Source location: [PdfModule.java L1151](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1151)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-78

### Message
> Invalid ID in trailer

### Details
Needs review

* Type: PDfInvalidException
* Source location: [PdfModule.java L1155](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1155)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-79

### Message
> Variable message

### Details
Needs review

* Type: ErrorMessage
* Source location: [PdfModule.java L1169](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1169)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


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
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-81

### Message
> Malformed cross-reference stream

### Details
Needs review

* Type: ErrorMessage, Malformed
* Source location: [PdfModule.java L1238](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1238)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-82

### Message
> Variable message

### Details
Needs review

* Type: ErrorMessage
* Source location: [PdfModule.java L1247](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1247)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-83

### Message
> Malformed cross-reference table

### Details
Needs review

* Type: PdfInvalidException
* Source location: [PdfModule.java L1289](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1289)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-84

### Message
> Malformed cross-reference table

### Details
Needs review

* Type: PdfInvalidException
* Source location: [PdfModule.java L1289](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1289)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-85

### Message
> Illegal operator in cross-reference table

### Details
An unexpected keyword was found in a cross-reference entry. Expected keywords are "f" or "n".

* Type: PdfMalformedException
* Source location: [PdfModule.java L1306](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1306)
* Examples: [1](http://wiki.opf-labs.org/download/attachments/101613571/SIP180620_ReColl-145370_eth-24266-02.pdf)

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-86

### Message
> Variable message

### Details
Needs review

* Type: ErrorMessage
* Source location: [PdfModule.java L1316](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1316)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-87

### Message
> Variable message

### Details
Unexpected error while parsing the cross-reference table.

* Type: ErrorMessage, Invalid
* Source location: [PdfModule.java L1322](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1322)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-88

### Message
> No document catalog dictionary

### Details
The trailer has no document catalogue entry ("Root") or a trailer was not found. \<Insert document catalogue explanation here.>

* Type: Error Message, Malformed
* Source location: [PdfModule.java L1339](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1339)
* Examples: [1](https://drive.google.com/open?id=0Bxn2YxzZ-3xCdi10RGM4Y3lqdVU), [2](http://wiki.opf-labs.org/download/attachments/101613571/SIP179680_ReColl-146381_eth-25337-01.pdf)

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-89

### Message
> No document catalog dictionary

### Details
The trailer contains a document catalogue entry ("Root") but it cannot be resolved. \<Insert document catalogue explanation here.>

* Type: Error Message, Malformed
* Source location: [PdfModule.java L1355](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1355)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-90

### Message
> File header gives version as ..., but catalog dictionary gives version as ...

### Details
The PDF version specified in the header is different from the version specified in the document catalogue dictionary.

* Type: InfoMessage
* Source location: [PdfModule.java L1418](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1418)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-91

### Message
> Invalid Version in document catalog

### Details
The document's PDF version, from either the file header or document catalog dictionary, cannot be recognised as a number.

* Type: PdfInvalidException
* Source location: [PdfModule.java L1430](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1430)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-92

### Message
> Invalid Names dictionary

### Details
Needs review

* Type: PdfInvalidException
* Source location: [PdfModule.java L1457](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1457)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-93

### Message
> Invalid Names dictionary

### Details
Needs review

* Type: PdfMalformedException
* Source location: [PdfModule.java L1461](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1461)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-94

### Message
> Invalid destinations dictionary

### Details
The document catalogue's "Dests" entry references an object which is not a dictionary. The optional "Dests" entry is expected to contain a dictionary of the document's destination objects.

* Type: PdfInvalidException
* Source location: [PdfModule.java L1475](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1475)
* Examples: [1](https://drive.google.com/open?id=0BzmAJJIyoZ9xUHRudTU5WTRZZXc)

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-95

### Message
> Invalid destinations dictionary

### Details
An unexpected error occurred while retrieving the document catalogue's destinations dictionary ("Dests").

* Type: PdfMalformedException
* Source location: [PdfModule.java L1479](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1479)
* Examples: [1](https://drive.google.com/open?id=0BzmAJJIyoZ9xOS1HQWpKUWNsakE)

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-96

### Message
> Variable message

### Details
Needs review

* Type: ErrorMessage
* Source location: [PdfModule.java L1485](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1485)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-97

### Message
> Variable message

### Details
Unexpected error while parsing the document catalog dictionary.

* Type: ErrorMessage, Malformed
* Source location: [PdfModule.java L1493](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1493)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-98

### Message
> Invalid algorithm value in encryption dictionary

### Details
The "V" entry of an encryption dictionary, which specifies the encryption algorithm used, has an invalid value.

* Type: PdfInvalidException
* Source location: [PdfModule.java L1557](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1557)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-99

### Message
> Variable message

### Details
Needs review

* Type: ErrorMessage
* Source location: [PdfModule.java L1635](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1635)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-100

### Message
> Variable message

### Details
Needs review

* Type: ErrorMessage
* Source location: [PdfModule.java L1669](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1669)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-101

### Message
> Unexpected exception ...

### Details
Unexpected error while parsing the document information dictionary.

* Type: ErrorMessage
* Source location: [PdfModule.java L1676](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1676)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-102

### Message
> Document page tree not found

### Details
The document catalogue is missing its "Pages" entry. The entry should point to the document's main, or "root", page tree.

* Type: PdfInvalidException
* Source location: [PdfModule.java L1687](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1687)
* Examples: [1](https://drive.google.com/open?id=0Bxn2YxzZ-3xCZ0wyOWxWSHk2Zlk), [2](http://wiki.opf-labs.org/download/attachments/101613571/SIP253613_ReColl-154468_eth-8330-02.pdf)

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-103

### Message
> Invalid page dictionary object

### Details
The page tree's root node is not a dictionary.

* Type: PdfMalformedException
* Source location: [PdfModule.java L1692](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1692)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Example PDF we (@BL) have so far has turned out to be a bug in source code from handling stream objects - https://github.com/openpreserve/jhove/pull/151. Correcting error leads to PDF-HUL-56.


## PDF-HUL-104

### Message
> Variable message

### Details
Needs review

* Type: ErrorMessage
* Source location: [PdfModule.java L1700](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1700)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-105

### Message
> Variable message

### Details
Unexpected error while parsing the document page tree.

* Type: ErrorMessage, Malformed
* Source location: [PdfModule.java L1707](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1707)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-106

### Message
> Variable message

### Details
Needs review

* Type: ErrorMessage
* Source location: [PdfModule.java L1725](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1725)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-107

### Message
> Unexpected exception ...

### Details
Unexpected error while parsing the document page label tree.

* Type: ErrorMessage
* Source location: [PdfModule.java L1732](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1732)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-108

### Message
> Invalid or ill-formed XMP metadata

### Details
Needs review

* Type: PdfInvalidException
* Source location: [PdfModule.java L1777](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1777)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-109

### Message
> Variable message

### Details
Needs review

* Type: ErrorMessage
* Source location: [PdfModule.java L1785](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1785)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-110

### Message
> Invalid or ill-formed XMP metadata

### Details
Needs review

* Type: ErrorMessage, Invalid
* Source location: [PdfModule.java L1791](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1791)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-111

### Message
> Variable message

### Details
Needs review

* Type: ErrorMessage, Malformed
* Source location: [PdfModule.java L1832](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1832)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-112

### Message
> Unexpected exception ...

### Details
Unexpected error while finding external streams.

* Type: ErrorMessage
* Source location: [PdfModule.java L1836](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1836)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-113

### Message
> Variable message

### Details
Needs review

* Type: ErrorMessage
* Source location: [PdfModule.java L1876](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L1876)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-114

### Message
> Variable message

### Details
Needs review

* Type: ErrorMessage
* Source location: [PdfModule.java L2141](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2141)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-115

### Message
> Unexpected exception ...

### Details
Unexpected error while finding images.

* Type: ErrorMessage
* Source location: [PdfModule.java L2146](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2146)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-116

### Message
> Expected dictionary for font entry in page resource

### Details
Needs review

* Type: ErrorMessage, Malformed
* Source location: [PdfModule.java L2201](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2201)
* Examples: [1](https://www.dropbox.com/s/a8wrcishzih3vsv/SOM_44_lisa1.pdf?dl=0), [2](https://www.dropbox.com/s/02iqqfbrbvvb913/SOM_44_lisa7.pdf?dl=0)

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-117

### Message
> Fonts exist, but are not displayed; ...

### Details
Needs review

* Type: InfoMessage
* Source location: [PdfModule.java L2213](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2213)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-118

### Message
> Variable message

### Details
Needs review

* Type: ErrorMessage
* Source location: [PdfModule.java L2223](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2223)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-119

### Message
> Unexpected error in findFonts

### Details
Some fonts in the document are missing in the file. Needs review.

* Type: ErrorMessage, Malformed
* Source location: [PdfModule.java L2231](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2231)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
The missing fonts are typically replaced by similar fonts that are found on the client's computer. These replacements can be imperfect and may cause letters or symbols to be subtstituted by incorrect glyphs, leading to spelling errors and missing or misleading iconography.

### Remediation
Create the original document with embedded fonts, as in PDF/A-compliant files. If this is not possible, one may be able to acquire the correct font and append it to the original PDF.


## PDF-HUL-120

### Message
> Improper nesting of object streams

### Details
Needs review

* Type: PdfMalformedException
* Source location: [PdfModule.java L2390](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2390)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-121

### Message
> Invalid object number or object stream

### Details
Needs review

* Type: PdfMalformedException
* Source location: [PdfModule.java L2424](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2424)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-122

### Message
> Compression method is invalid or unknown to JHOVE

### Details
An error ("ZipException") occurred while decompressing an object stream. \<See explanation for Object Streams: Object streams are stream objects (a dictionary followed by a stream of bytes) which contain other indirect objects. Placing objects in a stream allows them to be compressed with one or more filters, optimizing file sizes.> As of October 2016, this module only supports decompressing object streams with "FlateDecode" filters, although this exception can be thrown even when FlateDecode filters are being used. Needs further investigation.

* Type: PdfMalformedException
* Source location: [PdfModule.java L2435](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2435)
* Examples: [1](https://drive.google.com/open?id=0Bxn2YxzZ-3xCaUhKODY5MVRnUzA), [2](http://wiki.opf-labs.org/download/attachments/101613571/e-book_79.pdf), [3](http://wiki.opf-labs.org/download/attachments/101613571/inkonf_1500.pdf)

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
For error messages due to encryption the ETH Data Archive makes sure the files can be opened, as some DRM rights expire.

### Remediation
In some cases, one could ask the producer for the password, or remove certain kinds of PDF security using software tools.


## PDF-HUL-123

### Message
> Invalid object number or object stream

### Details
As of module 1.9: may erroneously be caused by UTF-16 encoding errors in string literals. Needs review.

* Type: PdfMalformedException
* Source location: [PdfModule.java L2440](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2440)
* Examples: [1](https://www.econstor.eu/obitstream/10419/50342/1/61501688X.pdf)

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-124

### Message
> Bad page labels

### Details
Needs review

* Type: PdfMalformedException
* Source location: [PdfModule.java L2635](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2635)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-125

### Message
> Page information is not displayed; ...

### Details
Needs review

* Type: InfoMessage
* Source location: [PdfModule.java L2670](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2670)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-126

### Message
> Variable message

### Details
Needs review

* Type: ErrorMessage
* Source location: [PdfModule.java L2679](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2679)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-127

### Message
> Invalid page label info

### Details
Needs review

* Type: PdfMalformedException
* Source location: [PdfModule.java L2715](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2715)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-128

### Message
> Annotation object is not a dictionary

### Details
An item in a page's annotations array ("Annots") does not point to a dictionary. Each item in an annotation array should point to an annotation dictionary containing that annotation's details.

* Type: PdfInvalidException
* Source location: [PdfModule.java L2732](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2732)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-129

### Message
> Annotations exist, but are not displayed; ...

### Details
Needs review

* Type: InfoMessage
* Source location: [PdfModule.java L2748](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2748)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-130

### Message
> Invalid Annotation list

### Details
Unexpected error while parsing a page's annotations.

* Type: PdfMalformedException
* Source location: [PdfModule.java L2760](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2760)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-131

### Message
> Invalid page dictionary

### Details
Needs review

* Type: PdfMalformedException
* Source location: [PdfModule.java L2826](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2826)
* Examples: [1](http://wiki.opf-labs.org/download/attachments/101613571/SIP247751_ReColl118253_eth-49437-01.pdf)

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-132

### Message
> Invalid page label sequence

### Details
Needs review

* Type: PdfMalformedException
* Source location: [PdfModule.java L2873](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2873)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-133

### Message
> Problem with page label structure

### Details
Needs review

* Type: PdfMalformedException
* Source location: [PdfModule.java L2921](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2921)
* Examples: [1](https://www.econstor.eu/obitstream/10419/49620/1/32932439X.pdf), [2](http://wiki.opf-labs.org/download/attachments/101613571/SIP110025_ReColl-66015_eth-24328-01.pdf), [3](http://wiki.opf-labs.org/download/attachments/101613571/SIP132254_ReColl-147838_eth-26921-01.pdf)

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-134

### Message
> Annotation dictionary missing required type (S) entry

### Details
An annotation dictionary contains an action dictionary ("A") which is missing its subtype entry ("S"). The subtype entry is necesssary for determining which kind of action to perform when the annotation is activated.

* Type: PdfMalformedException
* Source location: [PdfModule.java L3077](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L3077)
* Examples: [1](https://drive.google.com/open?id=0BzmAJJIyoZ9xRlFfdGRlN1hiaGc), [2](http://wiki.opf-labs.org/download/attachments/101613571/pp_821.pdf)

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-135

### Message
> Invalid Annotation property

### Details
Unexpected error while parsing an annotation.

* Type: PdfMalformedException
* Source location: [PdfModule.java L3139](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L3139)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-136

### Message
> Variable message

### Details
Needs review

* Type: ErrorMessage, Invalid
* Source location: [PdfModule.java L3191](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L3191)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-137

### Message
> Outlines contain recursive references

### Details
Needs review

* Type: InfoMessage
* Source location: [PdfModule.java L3803](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L3803)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-138

### Message
> Malformed outline dictionary

### Details
Unexpected error while parsing the document outline.

* Type: PdfMalformedException
* Source location: [PdfModule.java L3818](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L3818)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-139

### Message
> Invalid outline dictionary item

### Details
An outline item has no "Title" value.

* Type: PdfInvalidException
* Source location: [PdfModule.java L3846](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L3846)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-140

### Message
> Invalid outline dictionary item

### Details
An outline item has no "Parent" reference.

* Type: PdfInvalidException
* Source location: [PdfModule.java L3854](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L3854)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-141

### Message
> Invalid outline dictionary item

### Details
Needs review

* Type: PdfInvalidException
* Source location: [PdfModule.java L3860](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L3860)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-142

### Message
> Outlines contain recursive references

### Details
Needs review

* Type: InfoMessage
* Source location: [PdfModule.java L3916](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L3916)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-143

### Message
> Outlines contain recursive references

### Details
Needs review

* Type: InfoMessage
* Source location: [PdfModule.java L3934](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L3934)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-144

### Message
> Invalid outline dictionary item

### Details
An unexpected object type was encountered while parsing an outline item. Possible causes include unexpected "Prev", "Next", "First", or "Last" values.

* Type: PdfInvalidException
* Source location: [PdfModule.java L3951](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L3951)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-145

### Message
> Invalid outline dictionary item

### Details
Unexpected error while parsing an outline item.

* Type: PdfInvalidException
* Source location: [PdfModule.java L3954](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L3954)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-146

### Message
> Outlines exist, but are not displayed; ...

### Details
Needs review

* Type: InfoMessage
* Source location: [PdfModule.java L3975](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L3975)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-147

### Message
> Variable message

### Details
Needs review

* Type: ErrorMessage
* Source location: [PdfModule.java L3981](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L3981)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-148

### Message
> Improperly formed date

### Details
A date found in a dictionary does not conform to the expected format. Dates specified in dictionaries should follow the format: (D:YYYYMMDDHHmmSSOHH'mm') (PDF 1.4 Spec page 100, section 3.8.2 "Dates")

* Type: PdfInvalidException
* Source location: [PdfModule.java L4074](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L4074)
* Examples: [1](https://drive.google.com/file/d/0B04zL3V7knPNU1BGNFo4OGlWZ1U/view?usp=sharing), [2](https://www.dropbox.com/s/37n9jcwzdwdubs7/KAM18lisa8.pdf?dl=0), [3](https://www.dropbox.com/s/39jszmusblyz61s/NotesPrint_riigi_teataja_2007_IIpoolaasta.pdf?dl=0)

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
It may happen that after a "cure" there is no information about the creation date any more, if there are no XMP metadata in the original PDF. The date may be written poorly enough that some tools cannot recognize the date and so do not translate it into the new/corrected PDF.


## PDF-HUL-149

### Message
> Cross-reference tables are broken

### Details
Needs review

* Type: ErrorMessage
* Source location: [PdfModule.java L512](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L512)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-150

### Message
> Unexpected error in parsing font property

### Details
Needs review

* Type: ErrorMessage
* Source location: [PdfModule.java L610](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L610)
* Examples: Needed

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-151

### Message
> Too many fonts to report; some fonts omitted

### Details
Needs review

* Type: InfoMessage
* Source location: [PdfModule.java L614](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L614)
* Examples: [1](http://www.redbooks.ibm.com/redpapers/pdfs/redp4120.pdf), [2](https://www.dropbox.com/s/ig6u3zdp4q628zq/SOM_47.pdf?dl=0), [3](https://www.dropbox.com/s/36hc94osv6hq77j/Oiguskantsleri_ylevaade%5B1%5D.28.09.06.pdf?dl=0)

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


### Impact
Needs review

### Remediation
Needs review


## PDF-HUL-152

### Message
> No PDF header

### Details
The PDF header could not be found within the file's first 1024 bytes. This can also appear when there are certain kinds of junk data before the header, even if the header exists within the first 1024 bytes.

Should a file be classified as malformed if there is any non-zero data before the header, instead of only certain kinds?

* Type: ErrorMessage, Malformed
* Source location: [PdfModule.java L803](https://github.com/openpreserve/jhove/blob/release-1.14/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L803)
* Examples: [1](http://wiki.opf-labs.org/download/attachments/101613571/CERN-2005-009.pdf?version=1&modificationDate=1472125536000)

### References
PDF 1.6: Needs review
PDF 1.7: Needs review


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
PDF 1.6: Needs review
PDF 1.7: Needs review


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
PDF 1.6: Needs review
PDF 1.7: Needs review


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
PDF 1.6: Needs review
PDF 1.7: Needs review


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
PDF 1.6: Needs review
PDF 1.7: Needs review


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

