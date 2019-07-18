class EventImageController < ApplicationController

    before_action :find_event, except: %i[create index]

    # GET /user_image/id
    def show 
        
      if @event.photo.attached?
        render json: {photo_url: url_for(@event.photo) }
      else
        render json: {error: "This event has no image" }
      end
  
      #puts url_for(@users[1])
  
    end

    private

    def find_event
      @event = Event.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        render json: { errors: 'Event not found' }, status: :not_found
    end
  
end
