class ReviewsController < InheritedResources::Base

  private

    def review_params
      params.require(:review).permit(:user_id, :body, :rating, :place_id)
    end
end

