class KitchensController < ApplicationController

    def index
        @kitchens = Kitchen.all()
    end

    def show
        @items = Item.where(kitchen_id: params[:id]).all()
    end

end
