class ListController < ApplicationController
    def index
        @drinks = Drink.all()
    end
    def country
        @drinks = Drink.find_by(drinkLocation: params[:country])
        @recipe = @drinks.recipe.all()
    end
end
