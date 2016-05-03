class PlacesController < InheritedResources::Base

  private

    def place_params
      params.require(:place).permit(:name, :description, :location)
    end
end

