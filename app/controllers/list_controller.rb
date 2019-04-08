class ListController < ApplicationController
    def index
        @drinks = Recipe.all()
    end
<<<<<<< HEAD
    def country
        @drinks = Recipe.where(drinkLocation: params[:country])
    end
    def ingredients
=======
    def type
        @drinks = Recipe.where(drinkType: params[:type])
    end
    def occasion
        @drinks = Recipe.where(specialDate: params[:occasion])
>>>>>>> origin/iss3
    end
end
