class ListController < ApplicationController
    def index
        @drinks = Recipe.all()
    end
    def type
        @drinks = Recipe.find_by(drinkName: params[:type])
    end
    def occasion
        @drinks = Recipe.find_by(specialDate: params[:occasion])
    end
end
