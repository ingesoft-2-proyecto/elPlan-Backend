class CommentsController < ApplicationController

  def index
    @comments = Comment.all
    render json: @comments
  end
  
  # GET /comments/1
  def show
    render json: @comment
  end
  
  # POST /comments
  def create
    @comment = Comment.create(comment: params[:comment],user_id: params[:user_id],event_id: params[:event_id])

    if @comment.save
      render json: @comment, status: :created, location: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end
  
  # PATCH/PUT /comments/1
  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end
  
  # DELETE /comments/1
  def destroy
    @comment.destroy
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comment_params
      params.require(:comment).permit(:comment, :user_id, :event_id)
    end
  
  
end
