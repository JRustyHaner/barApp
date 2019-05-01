class RecipesController < ApplicationController
    def index
        @recipes = Recipe.all
        
    end
    def show
        @recipe_comment=Recipe.includes(:reviews).find(params[:id])
        @recipe = Recipe.includes(:ingredients).find(params[:id])
       
        #renders 'recipe/show.html.erb'
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
        @recipe = Recipe.new(recipe_params)
        begin
            @user_profile = UserProfile.includes(:drinks).find(session[:user_id])    
        rescue => exception
            redirect_to home_url, notice: "User not found. Please log in."
        end
        @user_profile.drinks.append @recipe
        if @user_profile.save
            
            redirect_to recipe_url(@recipe), notice: "Recipe record was successfully created."
        else
            flash.now[:alert] = 'Error! Unable to create Recipe record.'
            render :new
        end
    end
    def edit
        
        begin
            @recipe = Recipe.find(params[:id])    
        rescue => exception
            redirect_to recipes_url, alert: "Error: Recipe not found."
        end
        if (@recipe.userprofile_id != session[:user_id].to_i)
            redirect_to list_index_url, alert: "Not your recipe."
        end        
        #renders 'recipe/edit.html.erb'
    end
    def update
        @recipe = Recipe.find(params[:id])
        if @recipe.update(recipe_params)
            redirect_to recipe_url(@recipe), notice: "Recipe record was successfully updated."
        else
            flash.now[:alert] = 'Error! Unable to update Recipe record.'
            render :edit
        end
    end
    def destroy
        @recipe = Recipe.find(params[:id])
        @recipe.image = nil
        @recipe.destroy
        redirect_to recipes_url, notice: 'Recipe was successfully removed.'
    end
end
