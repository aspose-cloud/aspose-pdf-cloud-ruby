require 'aspose_pdf_cloud'
include AsposePdfCloud

app_key = 'b125f13bf6b76ed81ee990142d841195'
app_sid = '78946fb4-3bd4-4d3e-b309-f9e2ff9ac6f9'
@pdf_api = PdfApi.new(app_key, app_sid)
file_name = 'PdfWithAnnotations.pdf'
# Upload the File
@pdf_api.put_create(file_name, :: File.open('example_data/' + file_name, 'r') { |io| io.read(io.size) })
puts 'Uploaded the File'
    opts = {
        :folder => @temp_folder
    }

    annotation = InkAnnotation.new
    annotation.name = 'Test ink'
    annotation.rect = Rectangle.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
    annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
    annotation.horizontal_alignment = HorizontalAlignment::CENTER
    annotation.rich_text = 'Rich Text'
    annotation.subject = 'Subj'
    annotation.z_index = 1
    annotation.ink_list = [
        [
            Point.new({:X => 10, :Y => 40}),
            Point.new({:X => 30, :Y => 40})
        ],
        [
            Point.new({:X => 10, :Y => 20}),
            Point.new({:X => 20, :Y => 20}),
            Point.new({:X => 30, :Y => 20})
        ]
    ]
    annotation.cap_style = CapStyle::ROUNDED
    annotation.modified = '02/02/2018 00:00:00.000 AM'

    annotations_response = @pdf_api.get_document_ink_annotations(file_name, opts)
    annotation_id = annotations_response[0].annotations.list[0].id

    response = @pdf_api.put_ink_annotation(file_name, annotation_id,  annotation, opts)
    puts response