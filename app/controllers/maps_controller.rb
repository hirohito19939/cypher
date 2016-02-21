class MapsController < ApplicationController
  def new
    @location = Location.new
  end

  def show
    @location = Location.find(params[:id])
    @hash = Gmaps4rails.build_markers(@location) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      marker.infowindow user.description
      marker.json({title: user.title})
    end
  end

  def create
    Location.create
  end
end
