class DrinkController < ApplicationController
    def index
        @drinks = Drink.all
    end
    def show
    end
    def new
        @drink = Drink.new
    end
    def edit
    end
end
