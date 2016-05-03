class OpenTimesController < InheritedResources::Base

  private

    def open_time_params
      params.require(:open_time).permit(:start_time, :end_time, :place_id, :user_id)
    end
end

