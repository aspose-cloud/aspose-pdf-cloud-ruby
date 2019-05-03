﻿# AsposePdfCloud::PermissionsFlags
This enum represents user's permissions for a pdf.

## Enum
Name | Type | Value | Description
------------ | ------------- | ------------- | -------------
**PRINT_DOCUMENT** | **String** | 'PrintDocument' | (Security handlers of revision 2) Print the document. (Security handlers of revision 3 or greater) Print the document (possibly not at the highest quality level, depending on whether Aspose.Pdf.Permissions.PrintingQuality is also set).
**MODIFY_CONTENT** | **String** | 'ModifyContent' | Modify the contents of the document by operations other than those controlled by Aspose.Pdf.Permissions.ModifyTextAnnotations, Aspose.Pdf.Permissions.FillForm, and 11.
**EXTRACT_CONTENT** | **String** | 'ExtractContent' | (Security handlers of revision 2) Copy or otherwise extract text and graphics from the document, including extracting text and graphics (in support of accessibility to users with disabilities or for other purposes). (Security handlers of revision 3 or greater) Copy or otherwise extract text and graphics from the document by operations other than that controlled by Aspose.Pdf.Permissions.ExtractContentWithDisabilities.
**MODIFY_TEXT_ANNOTATIONS** | **String** | 'ModifyTextAnnotations' | Add or modify text annotations, fill in interactive form fields, and, if Aspose.Pdf.Permissions.ModifyContent is also set, create or modify interactive form fields (including signature fields).
**FILL_FORM** | **String** | 'FillForm' | (Security handlers of revision 3 or greater) Fill in existing interactive form fields (including signature fields), even if Aspose.Pdf.Permissions.ModifyTextAnnotations is clear.
**EXTRACT_CONTENT_WITH_DISABILITIES** | **String** | 'ExtractContentWithDisabilities' | (Security handlers of revision 3 or greater) Extract text and graphics (in support of accessibility to users with disabilities or for other purposes).
**ASSEMBLE_DOCUMENT** | **String** | 'AssembleDocument' | (Security handlers of revision 3 or greater) Assemble the document (insert, rotate, or delete pages and create bookmarks or thumbnail images), even if Aspose.Pdf.Permissions.ModifyContent is clear.
**PRINTING_QUALITY** | **String** | 'PrintingQuality' | (Security handlers of revision 3 or greater) Print the document to a representation from which a faithful digital copy of the PDF content could be generated. When this bit is clear (and bit 3 is set), printing is limited to a low-level representation of the appearance, possibly of degraded quality.



