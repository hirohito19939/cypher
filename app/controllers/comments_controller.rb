class CommentsController < ApplicationController
  def new
    @cyfer = Cyfer.find(params[:cyfer_id])
    @comment = Comment.new
  end

  def create
    Comment.create(create_params)
    redirect_to controller: :cyfers, action: :index
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def create_params
    params.require(:comment).permit(:comment).merge(cyfer_id: params[:cyfer_id], user_id: current_user.id)
  end
end
