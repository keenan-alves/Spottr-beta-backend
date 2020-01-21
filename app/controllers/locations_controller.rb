class LocationsController < ApplicationController
    def index
        @locations = Location.all 
        render json: @locations
    end 

    def create
        @location = Location.create(location_params)
        render json: @location 
    end

    def show
        @location = Location.find(params[:id])
        render json: @location 
    end 

    private

    def location_params
        params.permit(:name, :address, :city, :zipcode, :country, :state)
    end 
end
