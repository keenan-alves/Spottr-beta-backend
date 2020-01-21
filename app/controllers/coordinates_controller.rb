class CoordinatesController < ApplicationController

    def index
        @coordinates = Coordinate.all
        render json: @coordinates
    end 

    def create
        @coordinate = Coordinate.create(coordinate_params)
        render json: @coordinate 
    end

    def show
        @coordinate = Coordinate.find(params[:id])
        render json: @coordinate 
    end 

    private

    def coordinate_params
        params.permit(:latitude, :longitude)
    end 

end
