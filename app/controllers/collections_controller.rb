class CollectionsController < ApplicationController
  def index
    @collections = Collection.all
  end

  private

    def collection_params
      params.require(:collection).permit(:name, :description, :photo)
    end

  end
end
