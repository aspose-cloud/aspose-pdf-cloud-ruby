﻿# AsposePdfCloud::OptimizeOptions
Represents Pdf optimize options.

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allow_reuse_page_content** | **BOOLEAN** | If true page contents will be reused when document is optimized for equal pages. | 
**compress_images** | **BOOLEAN** | If this flag is set to true images will be compressed in the document. compression level is specfied with ImageQuality property. | 
**image_quality** | **Integer** | Specifie slevel of image compression when CompressIamges flag is used. | 
**link_duplcate_streams** | **BOOLEAN** | If this flag is set to true, Resource streams will be analyzed. If duplicate streams are found (i.e. if stream contents is equal), then thes streams will be stored as one object.  This allows to decrease document size in some cases (for example, when same document was concatenedted multiple times). | 
**remove_unused_objects** | **BOOLEAN** | If this flag is set to true, all document objects will be checked and unused objects (i.e. objects which does not have any reference) are removed from document. | 
**remove_unused_streams** | **BOOLEAN** | If this flag set to true, every resource is checked on it&#39;s usage. If resource is never used, then resources is removed. This may decrease document size for example when pages were extracted from document.  | 
**unembed_fonts** | **BOOLEAN** | Make fonts not embedded if set to true.  | 


