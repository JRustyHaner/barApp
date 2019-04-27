class IngredientsController < ApplicationController
    # def index
    #     @ingredients = Ingredient.all
    #     #renders ingredients.html.erb
    # end
    # def show
    #    @ingredient = Ingredient.find(params[:id])
    #    #renders 'ingredients/show.html.erb      
    # end
    def new
        begin
            @recipe = Recipe.find(params[:recipe_id])
        rescue => exception
            redirect_to recipes_url, alert: "Error: Recipe not found."
        end
        @ingredient = Ingredient.new
        #renders 'ingredients/new.html.erb'
    end
    def create
        begin
            @recipe = Recipe.includes(:ingredients).find(params[:recipe_id])
            #@recipe = Recipe.find(params[:recipe_id])
        rescue => exception
            redirect_to recipes_url, alert: "Error: Recipe not found."
        end
        @ingredient = Ingredient.new(params.require(:ingredient).permit(:amount,:ingredientName,:measurement))
        @recipe.ingredients.append @ingredient
        if @recipe.save
            
            redirect_to recipe_url(@recipe), notice: "Ingredient was successfully added."
        else
            flash.now[:alert] = "Error! Unable to add ingredient."
            render :new
        end
    end

    
end
