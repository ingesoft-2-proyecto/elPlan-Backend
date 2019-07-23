class PdfsendController < ApplicationController
    before_action :set_event, only: [:show]

    def set_event
        @event = Event.find(params[:id])
    end

    def show
        #render json: @event
        #respond_to do |format|
        #  format.html
        #  format.json
        #  format.pdf {render template: 'events/eventopdf', pdf: 'Documento', layout: 'pdf.html'}
        #end
        @event = Event.find(params[:id])

        #puts ("este es el evento", @event.title)
        pdf_html = ActionController::Base.new.render_to_string(template: 'event/eventopdf', layout: 'pdf.html', locals: { :@event => @event})
        pdf = WickedPdf.new.pdf_from_string(pdf_html)
        send_data pdf, filename: 'evento.pdf'
    end

end