class KeysController < ApplicationController
  def new
    @key = Keys.new
  end

  def create
    binding.pry
  end

  def destroy
  end
end
