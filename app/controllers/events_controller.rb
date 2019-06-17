class EventsController < ApplicationController

    # GET /events
  def index
    #@events = Event.all
    @events = Event.paginate(:page => params[:page], per_page: 10)
    render json: @events
  end

  # GET /events/1
  def show
    render json: @event
    #@event = scope.find(params[:id])
  end
  
  def generate_pdf
    respond_to do |format|
      format.html
      format.pdf do
        render  pdf: sanitize_filename("pdf_evento"),
             template: 'layouts/generate_pdf.pdf.erb',
             page_size: 'Letter',
             zoom: 1,
             background: true,
             margin: {
               top: 0,
               bottom:0,
               left:0,
               right:0 
             }
        end
      end
  end
  #<%= link_to "Generar PDF", generate_pdf_path(format: :pdf) %>
  #link en la vista para que el usuario descargue el pdf

  # POST /events
  def create
    @event = Event.new(event_params)
    @user = User.find(params[:user_id])
    respond_to do |format|
      if @event.save
        # Tell the UserMailer to send a welcome email after save
        EventMailer.new_event(@user,@event).deliver_later
        #render json: @user, status: :created, location: @user
        #format.html { redirect_to(@user, notice: 'Usuario creado.') }
        format.json { render json: @event, status: :created, location: @event }
      else
        #format.html { render action: 'new' }
        format.json { render json: @event.errors, status: :unprocessable_entity }
        #render json: @user.errors, status: :unprocessable_entity
      end
    end


    #if @event.save
    #  render json: @event, status: :created, location: @event
    #else
    #  render json: @event.errors, status: :unprocessable_entity
    #end
  end

  # PATCH/PUT /events/1
  def update
    if @event.update(event_params)
      render json: @event
    else
      render json: @event.errors, status: :unprocessable_entity
    end
  end

  # DELETE /events/1
  def destroy
    @event.destroy
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_params
      params.require(:event).permit(:borough, :date_of_event, :name, :description, :cost, :type_of_public, :over, :latitude, :longitude, :address, :user_id )
    end
end
