class WelcomeController < ApplicationController
	def index
    if current_user
      @place = Place.where(["owner_id = ?",current_user.id]).first
      @open_times = @place.open_times.all
      redirect_to place_path(@place)
    else
      render :index
    end
  end
end
