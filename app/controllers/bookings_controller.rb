class BookingsController < InheritedResources::Base

  def new
    render :new
  end

  def create
    # TO DO: create this template to handle converting open_times to a booking
  end


  private

    def booking_params
      params.require(:booking).permit(:start_time, :end_time, :place_id, :user_id)
    end
end

