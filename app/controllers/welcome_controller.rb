class WelcomeController < ApplicationController
	def index
    if current_user
      @place = Place.where(["owner_id = ?",current_user.id])
    else
      render :index
    end
  end
end
