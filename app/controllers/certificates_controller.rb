class CertificatesController < ApplicationController
  def show
    # respond_to do |format|
    # format.html
    # format.pdf do
    # pdf = WickedPdf.new.pdf_from_string(
    #   render_to_string('certificates/test.html.erb'),
    #   orientation:                    'Landscape'
    # )
    # send_data(pdf, :filename => "kennedy.pdf", :type=>"application/pdf")
    # end
    # end

    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "upfluential_certificate.pdf", template: 'certificates/show.pdf.html.erb', orientation: 'Landscape'
      end
    end
  end
end
