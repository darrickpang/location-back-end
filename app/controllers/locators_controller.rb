class LocatorsController < ApplicationController
    def index
        locators = Locator.all 
        render json: locators
    end 

    def new
        locator = Locator.new
    end

    def create 
        locator = Locator.create(locator_params)
        render json: locator
    end

    def show
        locator = Locator.find(params[:id])
        render json: locator
    end

    def edit
        locator = Locator.find(params[:id])
    end

    def update 
        locator = Locator.find(params[:id])
        locator.update(locator_params)
        render json: locator
    end

    private
    def locator_params
        params.require(:locator).permit(:latitude, :longitude)
    end
end
