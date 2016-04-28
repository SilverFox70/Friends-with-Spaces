class UserProfilesController < InheritedResources::Base

  private

    def user_profile_params
      params.require(:user_profile).permit(:first_name, :last_name, :telephone_number, :owner)
    end
end

