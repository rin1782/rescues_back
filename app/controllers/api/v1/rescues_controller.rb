class Api::V1::RescuesController < ApplicationController
    def index
        @rescues = Rescue.all
        render json: @rescues
    end

    def create
        @rescue = Rescue.new(rescue_params)
        if @rescue.save
            render json: @rescue
        else
            render json: {error: "Error adding Rescue"}
        end
    end

    def show
        @rescue = Rescue.find(params[:id])
        render json: @rescue
    end

    def destroy
        @rescue = Rescue.find(params[:id])
        @rescue.destroy
    end

    private

    def rescue_params
        params.require(:rescue).permit(:name, :location)
    end
end
