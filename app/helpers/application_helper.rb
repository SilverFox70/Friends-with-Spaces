module ApplicationHelper

  def is_owner?
    @place.owner_id == current_user.id
  end

end
