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
    def ingredient_params
        params.require(:ingredient).permit(:amount,:ingredientName,:measurement)
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
    def edit
        begin
            @ingredient = Ingredient.find(params[:id])    
        rescue => exception
            redirect_to home_path, alert: "Error: Ingredient not found."
        end        
        #renders 'ingredients/edit.html.erb'
    end
    def update
        begin
            @ingredient = Ingredient.find(params[:id])    
        rescue => exception
            redirect_to home_path, alert: "Error: Ingredient not found."
        end
        if @ingredient.update(ingredient_params)
            redirect_to edit_recipe_url(@ingredient.recipes), notice: "Ingredient was successfully updated."
        else
            flash.now[:alert] = 'Error! Unable to update Ingredient.'
            render :edit
        end
    end
    def destroy
        begin
            @ingredient = Ingredient.find(params[:id])    
        rescue => exception
            redirect_to recipes_url, notice: "Error: Ingredient not found."
        end
            @recipe = @ingredient.recipes
            @ingredient.destroy
        redirect_to recipe_url(@recipe), notice: 'Recipe was successfully removed.'
    end  
end
