class AdministratorsController < ApplicationController
  before_action :set_administrator, only: [:show, :update, :destroy]

  # GET /administrators
  def index
    #@administrators = Administrator.all
    @administrators = Administrator.paginate(:page => params[:page], per_page: 10)
    render json: @administrators
  end

  # GET /administrators/1
  def show
    render json: @administrator
  end

  # POST /administrators
  def create
    @administrator = Administrator.new(administrator_params)

    if @administrator.save
      render json: @administrator, status: :created, location: @administrator
    else
      render json: @administrator.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /administrators/1
  def update
    if @administrator.update(administrator_params)
      render json: @administrator
    else
      render json: @administrator.errors, status: :unprocessable_entity
    end
  end

  # DELETE /administrators/1
  def destroy
    @administrator.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_administrator
      @administrator = Administrator.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        render json: { errors: 'Administrator not found' }, status: :not_found
    end

    # Only allow a trusted parameter "white list" through.
    def administrator_params
      params.require(:administrator).permit(:name)
    end
end
