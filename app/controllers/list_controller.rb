class ListController < ApplicationController
    def index
        @drinks = Drink.all()
    end
    def top
        @drinks = Drink.find_by(drinkName: params[:top])
        @recipe = @drinks.recipe.all()
    end
    def new
        @drinks = Drink.find(:all, :order => "id desc", :limit => 10).reverse
        @recipe = @drinks.recipe.all()
    end
end
