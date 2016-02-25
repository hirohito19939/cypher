class CyfersController < ApplicationController
  before_action :authenticate_user!, only: :show

  def index
    @cyfers = Cyfer.page(params[:page]).per(9).order("created_at DESC")
  end

  def new
    @cyfer = Cyfer.new
    @cyfer.locations.build
  end

  def create
    Cyfer.create(create_params)
    redirect_to :root
  end

  def edit
    @cyfer = Cyfer.find(params[:id])
  end

  def update
    Cyfer.where(id: params[:id]).first.update(update_params)
  end

  def show
    @cyfer = Cyfer.find(params[:id])
    @key = Key.new
    @comment = Comment.new
    @keys = Key.all
    @comments = @cyfer.comments.order('id DESC').limit(20)
  end

  def destroy
  end

  private
  def create_params
    params.require(:cyfer).permit(:detail, :name, :date_time, :place, :avatar, locations_attributes: [:address]).merge(shusai_id: current_user.id, shusai_name: current_user.mc_name)
  end

  def update_params
    params.require(:cyfer).permit(:detail, :name, :date_time, :place, :avatar, locations_attributes: [:address]).merge(shusai_id: current_user.id, shusai_name: current_user.mc_name)
  end
end
