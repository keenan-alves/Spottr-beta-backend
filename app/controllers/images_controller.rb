class ImagesController < ApplicationController

    def index
        @images = Image.all
        render json: @images 
    end

    def create
        @image = Image.create(image_params)
        render json: @image 
    end 

    def show
        @image = Image.find(params[:id])
        render json: @image
    end 

    private

    def image_params
        params.permit(:image_url)
    end 


end
