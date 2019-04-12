class IngredientsController < ApplicationController
    def index
        @ingredients = Ingredient.all
        #renders ingredients.html.erb
    end
end
