class PicturesController < InheritedResources::Base

	def index
    @place = Place.find(params[:place_id])
    @pictures = @place.pictures.all
	end

  def edit
    @place = Place.find_by_id(params[:place_id])
    @picture = Picture.find_by_id(params[:id])
    render "edit"
  end

  private

    def picture_params
      params.require(:picture).permit(:img_url, :place_id)
    end
end

