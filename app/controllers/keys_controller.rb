class KeysController < ApplicationController
  def new
    @key = Keys.new
  end

  def create
  Key.create(create_params)
  redirect_to :back
  end

  def destroy
  @key = Key.where(cyfer_id: params[:id], user_id: current_user.id)
  @key.first.destroy
  redirect_to :back
  end

  def reset
    @key = Key.where(cyfer_id: params[:key_id])
    @key.destroy_all
    redirect_to :back
  end

  private
  def create_params
  params.permit(:cyfer_id).merge(user_id: current_user.id, cyfer_id: params[:format])
end
end
