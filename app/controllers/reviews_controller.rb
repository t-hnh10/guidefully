class ReviewsController < ApplicationController
    def new
        @review = Review.new
        @review.guide_id = params[:guide]
    end

    def create
        guide = Guide.find(params[:review][:guide_id])
        @review = guide.reviews.new
        @review.user_id = current_user.id
        @review.comment = params[:review][:comment]
        if @review.save
            redirect_to guide_path(guide)
        else
            flash[:alert] = "Oops. There was a problem creating the review."
        end
    end     
end
