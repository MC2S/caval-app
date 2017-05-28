class ShoesController < ApplicationController
  def new
  end

  def create
  end

  def updatedelete
  end

  def index
  end

  def show
  end

 private

    def shoe_params
      params.require(:shoe).permit(:name, :description, :color, :size, :price, :photo)
    end
end
