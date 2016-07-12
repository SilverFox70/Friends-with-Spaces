class PlacesController < InheritedResources::Base

  def index
    @places = Place.all
    @pictures = []
    @places.each do |place|
      @pictures[place.id] = place.pictures.all
    end
  end

  def new
    if current_user
      @place = Place.new
    else
      redirect_to 'index'
    end
  end

  def create
    @place = Place.new(place_params)
    @place.owner_id = current_user.id 
    if @place.save
      flash[:notice] = "Place successfully created!"
      @open_times = @place.open_times
      # Currently only return the first picture
      @picture = @place.pictures.first
      render 'show'
    else
      render 'new'
    end
  end

  def show
    @place = Place.find(params[:id])
    # Currently only return the first picture
    @picture = @place.pictures.first
    @open_times = @place.open_times.all
    render 'show'
  end

  def edit
    @place = Place.find(params[:id])
    @pictures = @place.pictures.all
  end



  private

    def place_params
      params.require(:place).permit(:name, :description, :location)
    end
end

