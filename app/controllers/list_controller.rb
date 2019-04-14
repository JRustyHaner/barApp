class ListController < ApplicationController
    def index
        @drinks = Recipe.all()
    end
    def country
        @drinks = Recipe.where(drinkLocation: params[:country])
    end
    def ingredients
        @drinks = Recipe.where(ingredients: {ingredientName: params[:ingredient]})
    end
    def type
        @drinks = Recipe.where(drinkType: params[:type])
    end
    def occasion    
        @drinks = Recipe.where(specialDate: params[:occasion])
    end
   
    def new
        @drinks = Recipe.order(created_at: :asc).reverse_order.limit(10)

    end
end
