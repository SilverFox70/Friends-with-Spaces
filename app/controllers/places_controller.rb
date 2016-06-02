class PlacesController < InheritedResources::Base

  def show
    @place = Place.find(params[:id])
    @open_times = @place.open_times.all
    render 'show'
  end

  private

    def place_params
      params.require(:place).permit(:name, :description, :location)
    end
end

