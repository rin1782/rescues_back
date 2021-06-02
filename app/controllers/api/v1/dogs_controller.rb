class Api::V1::DogsController < ApplicationController
    
    before_action :set_rescue
    
    def index
       @dogs = @rescue.dogs
       render json: @dogs
    end

    def show
        @dog = Dog.find(params[:id])
        render json: @dog
    end

    def create
        @dog = @rescue.dogs.new(dog_params)
        if @dog.save
            render json: @dog
        else
            render json: {error: "Dog info not Valid"}
        end
    end

    # def create
    #     @transaction = @account.transactions.new(transaction_params)
    #     if @account.update_balance(@transaction) != 'Balance too low.'
    #       @transaction.save
    #       render json: @transaction
    #     else
    #       render json: {error: 'Balance too low'}
    #     end
    #   end



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
