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
  folder: @temp_folder
}

annotation = PolygonAnnotation.new
annotation.name = 'Test polygon'
annotation.rect = Rectangle.new(LLX: 100, LLY: 100, URX: 200, URY: 200)
annotation.flags = [AnnotationFlags::DEFAULT]
annotation.horizontal_alignment = HorizontalAlignment::CENTER
annotation.rich_text = 'Rich Text'
annotation.subject = 'Subj'
annotation.z_index = 1
annotation.title = 'Title'
annotation.vertices = [
  Point.new(X: 10, Y: 10),
  Point.new(X: 20, Y: 10),
  Point.new(X: 10, Y: 20),
  Point.new(X: 10, Y: 10)
]

response = @pdf_api.post_page_polygon_annotations(file_name, 1, [annotation], opts)
puts response
