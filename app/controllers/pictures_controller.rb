class PicturesController < InheritedResources::Base

	def index
    @place = Place.find(params[:place_id])
    @pictures = @place.pictures.all
  end

  private

    def picture_params
      params.require(:picture).permit(:img_url, :place_id)
    end
end

