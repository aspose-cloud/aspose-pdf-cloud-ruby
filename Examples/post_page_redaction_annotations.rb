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

annotation = RedactionAnnotation.new
annotation.name = 'Test Redaction Annotation'
annotation.rect = Rectangle.new({:LLX => 100, :LLY => 100, :URX => 200, :URY => 200})
annotation.flags = [AnnotationFlags::HIDDEN, AnnotationFlags::NO_VIEW]
annotation.horizontal_alignment = HorizontalAlignment::CENTER
annotation.z_index = 1
annotation.quad_point = [
    Point.new({:X => 11, :Y => 42}),
    Point.new({:X => 33, :Y => 44})
]
annotation.modified = '02/02/2018 12:00:00.000 AM'

response = @pdf_api.post_page_redaction_annotations(file_name, 1,  [annotation], opts)
puts response