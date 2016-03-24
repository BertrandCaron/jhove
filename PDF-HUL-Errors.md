PDF related errors

### {ID}:{Name}
**Explanation:**  
**Examples:**  
**Source Code Location:**  
**Impact:**  
**Cure:**  
**Classification:**  
**Exception:**

### PDF-HUL-1:Missing dictionary in document node
**Explanation:** This error/exception is thrown if there is no PdfDictionary. The code checks if "_dict == null" and if it is null (=not there), the error is thrown. As a Pdf Dictionary is mandatory for a well formed PDF, this error leads to a malformed PDF.  
**Examples:**   
**Source Code Location:** [line 104 in DocNode class](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/pdf/DocNode.java#L104)  
**Impact:** A missing Pdf Dictionary is a real error /lack, which should not be accepted.  
**Cure:** Is it possible to build a Pdf Dictionary as an afterthought? Maybe iText can fix it. We (at ZBW) have an iText-Tool, which just copies each page into a new PDF. The PDF structure gets repaired by this procedure and I would guess that it would build a brand new PDF Dictionary for the PDF. I do not have any example by hand, though, so I cannot check.  
**Classification:** Dictionary  
**Exception:** PdfMalformedException  

### PDF-HUL-2:Invalid page dictionary
**Explanation:**  
**Examples:**  
**Source Code Location:** [Line 2921 of the class PdfModule](https://github.com/openpreserve/jhove/blob/integration/jhove-modules/src/main/java/edu/harvard/hul/ois/jhove/module/PdfModule.java#L2921)  
**Impact:**  
**Cure:**  
**Classification:** Dictionary  
**Exception:** PdfMalformedException  