class ListController < ApplicationController
    def index
        @drinks = Recipe.all()
    end
    def type
        @drinks = Recipe.where(drinkType: params[:type])
    end
    def occasion
        @drinks = Recipe.where(specialDate: params[:occasion])
    end
end
