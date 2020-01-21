class GymsController < ApplicationController

    def index
        @gyms = Gym.all
        render json: @gyms 
    end

    def create
        @gym = Gym.create(gym_params)
    end 

    def show
        @gym = Gym.find(params[:id])
        render json: @gym
    end 

    private
    
    def gym_params
        params.permit(:name, :address, :city, :zipcode, :country, :state)
    end 

end
