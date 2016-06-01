class OpenTimesController < InheritedResources::Base

  def edit
    @place = Place.find_by_id(params[:place_id])
    @open_time = OpenTime.find_by_id(params[:id])
    render "edit"
  end

  private

    def open_time_params
      params.require(:open_time).permit(:start_time, :end_time, :place_id, :user_id)
    end
end

