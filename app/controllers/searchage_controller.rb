class SearchageController < ApplicationController
  def create
    @search = User.search_age(params[:age])
    render json: @search.size
  end

#  def index
#    @user = User.all
#    render json: @user, each_serializer: SimpleuserSerializer
#  end
end
