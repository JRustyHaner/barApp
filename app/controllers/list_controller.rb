class ListController < ApplicationController
    def index
        @drinks = Recipe.all()
    end
    def country
        @drinks = Recipe.find_by(drinkLocation: params[:country])
    end
end
