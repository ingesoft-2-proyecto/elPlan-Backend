class CategoriesController < ApplicationController
    
  def index
    @categories = Category.all
    render json: @categories
  end
  
  # GET /categories/1
  def show
    render json: @category
  end
  
  # POST /categories
  def create
    @category = Category.create(name: params[:name])

    if @category.save
      render json: @category, status: :created, location: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end
  
  # PATCH/PUT /categories/1
  def update
    if @category.update(category_params)
      render json: @category
    else
      render json: @category.errors, status: :unprocessable_entity
    end
  end
  
  # DELETE /categories/1
  def destroy
    @category.destroy
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @comment = Comment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def category_params
      params.require(:category).permit(:name)
    end
  
end
