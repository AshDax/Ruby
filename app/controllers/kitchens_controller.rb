class KitchensController < ApplicationController

    def index
        @kitchens = Kitchen.all()
    end

    def show
        @kitchen = Kitchen.find(params[:id])
    end

    def new
        @kitchen = Kitchen.new
    end

    def create
        
        @kitchen = Kitchen.new(kitchen_params)

        if @kitchen.save
            redirect_to action: 'index'
        else
            render :new, status: :unprocessable_entity
        end
    end


    def edit
        @kitchen = Kitchen.find(params[:id])
    end

    def update
        @kitchen = Kitchen.find(params[:id])

        if @kitchen.update(kitchen_params)
            redirect_to action: 'index'
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy 
        @kitchen = Kitchen.find(params[:id])
        @kitchen.destroy            
        redirect_to root_path
    end

    private
        def kitchen_params
            params.require(:kitchen).permit(:name)
        end
end
