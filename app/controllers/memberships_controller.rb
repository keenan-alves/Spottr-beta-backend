class MembershipsController < ApplicationController

    def index
        @memberships = Membership.all
        render json: @memberships 
    end

    def create
        @membership = Membership.create(membership_params)
        if @membership.valid? 
        render json: @membership 
        else 
            render json: {errors: @membership.errors.full_messages} 
        end
    end 

    def show
        @membership = Membership.find(params[:id])
        render json: @membership
    end 

    def destroy
        @membership = Membership.find(params[:id])
        @membership.destroy 
    end 

    private
    
    def membership_params 
        params.permit(:name, :location, :user_id)
    end 
end
