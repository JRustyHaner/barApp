class RecipesController < ApplicationController
    def index
        @recipes = Recipe.all
    end
    def show
        @recipe = Recipe.find(params[:id])
        #renders 'recipe/show.html.erb'
    end
    def new
        @recipe = Recipe.new
    end
    def create
        @recipe = Recipe.new(params.require(:recipe).permit(:drinkName, :specialDate, :drinkLocation, :drinkDate ))
        if @recipe.save
            redirect_to recipe_url(@recipe), notice: "Recipe record was successfully created."
        else
            flash.now[:alert] = 'Error! Unable to create Recipe record.'
            render :new
        end
    end
    def edit
        @recipe = Recipe.find(params[:id])
        #renders 'recipe/edit.html.erb'
    end
    def update
        @recipe = Recipe.find(params[:id])
        if @recipe.update(params.require(:recipe).permit(:drinkName, :specialDate, :drinkLocation, :drinkDate ))
            redirect_to recipe_url(@recipe), notice: "Recipe record was successfully updated."
        else
            flash.now[:alert] = 'Error! Unable to update Recipe record.'
            render :edit
        end
    end
    def destroy
        @recipe = Recipe.find(params[:id])
        @recipe.destroy
        redirect_to recipes_url, notice: 'Recipe was successfully removed.'
    end
end
