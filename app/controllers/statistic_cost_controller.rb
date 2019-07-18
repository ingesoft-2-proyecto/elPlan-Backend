class StatisticCostController < ApplicationController
    def create
        search = Event.search_cost(params[:cost])
        #puts params[:cost]
        render json: search
    end
end
