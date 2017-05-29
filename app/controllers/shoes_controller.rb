class ShoesController < ApplicationController
   before_action :set_collection, only: [:new, :create, :index]
  def new
    @shoe = Shoe.new
  end

  def create
    @shoe = Shoe.new(shoe_params)
    @shoe.collection = @collection

    if @shoe.save
      redirect_to collection_shoes_path
    else
      render :new
    end
  end


  def index
    @shoes = @collection.shoes
  end

  def show
  end

 private

    def set_collection
      @collection = Collection.find(params[:collection_id])
    end

    def shoe_params
      params.require(:shoe).permit(:name, :description, :color, :size, :price, photos: [])
    end
end
