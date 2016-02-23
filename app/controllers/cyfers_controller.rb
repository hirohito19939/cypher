class CyfersController < ApplicationController
  def index
    @cyfers = Cyfer.all
  end

  def new
    @cyfer = Cyfer.new
    @cyfer.locations.build
  end

  def create
    cyfer = Cyfer.new(create_params)
    cyfer.save
  end

  def edit
  end

  def update
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
    params.require(:cyfer).permit(:detail, :name, :date_time, :place, :avatar, locations_attributes: [:address])
  end
end
