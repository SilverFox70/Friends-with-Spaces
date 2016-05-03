class PicturesController < InheritedResources::Base

  private

    def picture_params
      params.require(:picture).permit(:img_url, :place_id)
    end
end

