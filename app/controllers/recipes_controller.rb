class RecipesController < ApplicationController
    def index
        @recipes = Recipe.all
        
    end
    def show
        @recipe = Recipe.includes(:ingredients).find(params[:id])
        @recipe_comment=Recipe.includes(:reviews).find(params[:id])
    end
    def recipe_params
        params.require(:recipe).permit(:drinkName, :drinkType, :specialDate, :drinkLocation, :drinkDate, :description, :image)
    end
    def new
        @recipe = Recipe.new
        @recipe.drinkDate = Time.current
        #renders 'recipe/new.html.erb'
    end
    def create
        @recipe = Recipe.new(params.require(:recipe).permit(:drinkName, :drinkType, :specialDate, :drinkLocation, :drinkDate, :description, :image))
        
        if @recipe.save
            @recipe.image.attach(params[:image])
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
        if @recipe.update(params.require(:recipe).permit(:drinkName,  :drinkType,  :specialDate, :drinkLocation, :drinkDate, :description, :image)
            )
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
