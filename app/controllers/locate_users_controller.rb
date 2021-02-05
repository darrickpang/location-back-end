class LocateUsersController < ApplicationController
    def index
        locate_users = LocateUser.all 
        render json: locate_users
    end 

    def new
        locate_user = LocateUser.new
    end

    def create 
        locate_user = LocateUser.create(locator_params)
        render json: locate_user
    end

    def show
        locate_user = LocateUser.find(params[:id])
        render json: locate_user
    end

    def edit
        locate_user = LocateUser.find(params[:id])
    end

    def update 
        locate_user = LocateUser.find(params[:id])
        locate_user.update(locator_params)
        render json: locate_user
    end

    private
    def locator_params
        params.require(:locate_user).permit(:user_id, :locator_id)
    end
end
