class UserImageController < ApplicationController
    
    before_action :find_user, except: %i[create index]

    # GET /user_image/id
    def show 
        
      if @user.photo.attached?
        render json: {photo_url: url_for(@user.photo) }
      else
        render json: {error: "This user has no profile image" }
      end
  
      #puts url_for(@users[1])
  
    end

    private

    def find_user
      @user = User.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        render json: { errors: 'User not found' }, status: :not_found
    end
  
  
end
