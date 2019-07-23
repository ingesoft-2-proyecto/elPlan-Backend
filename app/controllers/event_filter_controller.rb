class EventFilterController < ApplicationController
    def create
        search = Event.search_category(params[:category])
        
        render json: search
    end
end
