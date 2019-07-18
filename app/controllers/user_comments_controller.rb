class UserCommentsController < ApplicationController
   
    before_action :find_user, except: %i[create index]

    # GET /user_image/id
    def index 
        render json: User.joins(:comments)
      #puts url_for(@users[1])
    end

    private

    def find_user
      @user = User.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        render json: { errors: 'User not found' }, status: :not_found
    end
  
end
