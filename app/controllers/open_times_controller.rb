class OpenTimesController < InheritedResources::Base

  def new
    @place = Place.find(params[:place_id])
    @open_time = @place.open_times.new
    if params[:this_day]
      @open_time.start_time = params[:this_day]
      @open_time.end_time = params[:this_day]
    end
    render "new"
  end

  def create
    @place = Place.find(params[:place_id])
    @open_time = @place.open_times.create(open_time_params)
    @open_times = @place.open_times.all
    render "places/show"
  end

  def edit
    @place = Place.find_by_id(params[:place_id])
    @open_time = OpenTime.find_by_id(params[:id])
    render "edit"
  end

  def update
    @open_time = OpenTime.find_by_id(params[:id])
    if @open_time.update(open_time_params)
      redirect_to :back
    else
      render :edit
    end
  end

  def destroy
    ot = OpenTime.find(params[:id])
    p = Place.find(params[:place_id])
    ot.destroy
    @place = Place.find_by_id(params[:place_id])
    @open_times = @place.open_times.all
    render 'places/show'
  end

  private

    def open_time_params
      params.require(:open_time).permit(:start_time, :end_time, :place_id, :user_id)
    end
end

