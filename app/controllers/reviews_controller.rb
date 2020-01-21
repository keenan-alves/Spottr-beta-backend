class ReviewsController < ApplicationController

    def index
        @reviews = Review.all
        render json: @reviews 
    end

    def create
        @review = Review.create(review_params)
    end 

    def show
        @review = Review.find(params[:id])
        render json: @review
    end 

    def destroy
        @review = Review.find(params[:id])
        @review.destroy
    end 

    private
    
    def review_params
        params.permit(:review_content)
    end 

end
