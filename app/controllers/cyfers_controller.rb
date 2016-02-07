class CyfersController < ApplicationController
  def index
    @cyfers = Cyfer.all
  end

  def new
    @cyfer = Cyfer.new
  end

  def create
    Cyfer.create(create_params)
  end

  def edit
  end

  def update
  end

  def show
    @cyfer = Cyfer.find(params[:id])
    @key = Key.new
  end

  def destroy
  end

  private
  def create_params
    params.require(:cyfer).permit(:detail, :name, :date_time, :place, :avatar)
  end
end
