class Api::V1::DogsController < ApplicationController
    
    before_action :set_rescue
    
    def index
       @dogs = @rescue.dogs
       render json: @dogs
    end

    def show
        @dog = @rescue.dogs.find_by(id: params[:id])
        render json: @dog
    end

    def create
        @dog = Dog.new(dog_params)

        if @dog.save
            render json: @dog
        else
            render json: {error: "Dog not added. Try again with valid name and rescue ID"}
        end
    end

    def update
        if @dog.update(dog_params)
            render json: @dog
        else
            render json: @dog.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @dog = Dog.find(params[:id])
        @dog.destroy
    end

    private

    def set_rescue
        @rescue = Rescue.find(params[:rescue_id])
    end

    def dog_params
        params.require(:dog).permit(:name, :description, :img_url, :rescue_id)
    end
end
