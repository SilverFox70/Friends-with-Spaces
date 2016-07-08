class PlacesController < InheritedResources::Base

  def index
    @places = Place.all
    @pictures = []
    @places.each do |place|
      @pictures[place.id] = place.pictures.all
    end
  end

  def show
    @place = Place.find(params[:id])
    @picture = @place.pictures.first
    @open_times = @place.open_times.all
    render 'show'
  end

  private

    def place_params
      params.require(:place).permit(:name, :description, :location)
    end
end

