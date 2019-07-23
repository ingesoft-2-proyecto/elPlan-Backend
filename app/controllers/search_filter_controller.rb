class SearchFilterController < ApplicationController
    def create
        search_result = Event.search_events(params[:search])
        render json: search_result
    end
end
