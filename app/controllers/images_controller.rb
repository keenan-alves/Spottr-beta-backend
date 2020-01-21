class ImagesController < ApplicationController

    def index
        @images = image.all
        render json: @images 
    end

    def create
        @image = image.create(image_params)
        render json: @image 
    end 

    def show
        @image = image.find(params[:id])
        render json: @image
    end 

    private

    def image_params
        params.permit(:image_url)
    end 


end
