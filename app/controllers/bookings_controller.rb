class BookingsController < InheritedResources::Base

  def new
    render :new
  end

  def create
    
  end


  private

    def booking_params
      params.require(:booking).permit(:start_time, :end_time, :place_id, :user_id)
    end
end

