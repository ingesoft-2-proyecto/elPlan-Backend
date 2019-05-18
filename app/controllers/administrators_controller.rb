class AdministratorsController < ApplicationController

  def index
    @administrators = Administrator.all
    render json: @administrators
  end

  def show
    render json: @administrator
  end

  def create
    @administrator = Administrator.new(administrator_params)

    if @administrator.save
      render json: @administrator, status: :created, location: @administrator
    else
      render json: @administrator.errors, status: :unprocessable_entity
    end

  end
  def update
    if @administrator.update(administrator_params)
      render json: @administrator
    else
      render json: @administrator.errors, status: :unprocessable_entity
    end
  end

end
