class KeysController < ApplicationController
  def new
    @key = Keys.new
  end

  def create
  Key.create(create_params)
  redirect_to :root
  end

  def destroy
  @key = Key.where(cyfer_id: params[:id], user_id: current_user.id)
  @key.first.destroy
  redirect_to "/cyfers/#{params[:id]}"
  end

  private
  def create_params
  params.permit(:cyfer_id).merge(user_id: current_user.id, cyfer_id: params[:format])
end
end
