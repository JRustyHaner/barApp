class ListController < ApplicationController
    def index
        @drinks = Drink.all()
    end
    def type
        @drinks = Drink.find_by(drinkName: params[:type])
        @recipe = @drinks.recipe.all()
    end
    def occasision
        @drinks = Drink.find_by(specialDate: params[:occasion])
        @recipe = @drinks.recipe.all()
    end
end
