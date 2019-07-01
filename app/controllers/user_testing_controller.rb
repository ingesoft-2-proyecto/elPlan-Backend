class UserTestingController < ApplicationController
    
      # GET /users
  def index
    @users = User.all

    render json: @users, status: :ok
    puts url_for(@users[1])

  end
end
