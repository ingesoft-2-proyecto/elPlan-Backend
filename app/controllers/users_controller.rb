class UsersController < ApplicationController

  before_action :authorize_request, except: [:create, :show, :index]
  before_action :find_user, except: %i[create index]

  # GET /users
  def index
    #@users = User.all
    @users = User.paginate(:page => params[:page], per_page: 10)
    render json: @users, status: :ok

    #@users = User.all.with_attached_photo

    #render json: @users.to_json(include: { photo_attachment: { include: :blob } })
  end


  # GET /users/1
  def show
    render json: @user, status: :ok
    #render json: @user.to_json(include: { photo: url_for(@user.photo)  }), status: :ok
end

  # POST /users
  def create
    @user = User.new(user_params)
#=begin
    
    respond_to do |format|
      if @user.save
        # Tell the UserMailer to send a welcome email after save
        UserMailer.welcome_email(@user).deliver_later
        #render json: @user, status: :created, location: @user
        #format.html { redirect_to(@user, notice: 'Usuario creado.') }
        format.json { render json: @user, status: :created, location: @user }
      else
        #format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
        #render json: @user.errors, status: :unprocessable_entity
      end
    end
      
#=end
    #if @user.save
    #  render json: @user, status: :created, location: @user
    #else
    #  render json: @user.errors, status: :unprocessable_entity
    #end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private

    def find_user
      @user = User.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        render json: { errors: 'User not found' }, status: :not_found
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.permit(:photo, :name, :surname, :born_date, :age, :password, :latitude, :longitude, :notifications, :email, :password_confirmation)
    end
end
