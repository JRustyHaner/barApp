class ListController < ApplicationController
    def index
        @drinks = Recipe.all()
    end
    def country
        @drinks = Recipe.where(drinkLocation: params[:country])
    end
    def ingredients
    end
end
