class ListController < ApplicationController
    def index
        @drinks = Recipe.all()
    end
    def country
        @drinks = Recipe.where(drinkLocation: params[:country])
    end
    def ingredient
        @drinks = Recipe.joins(:ingredients).where("ingredients.ingredientName LIKE ?", "%#{params[:ingredient]}%")
    end
    def type
        @drinks = Recipe.where(drinkType: params[:type])
    end
    def occasion    
        @drinks = Recipe.where(specialDate: params[:occasion])
    end
    def top
        @drinks = Recipe.left_joins(:reviews).group(:id).order('COUNT(drink_comments.id) DESC').limit(10)
    end   
    def new
        @drinks = Recipe.order(created_at: :desc).limit(10)

    end

    def bar
        @user_profiles = UserProfile.all()
    end

    def search
        if params[:by] == "occasion"
            redirect_to list_by_occasion_path(:occasion => params[:search])
        end
        if params[:by] == "country"
            redirect_to list_by_country_path(:country => params[:search])
        end
        if params[:by] == "ingredient"
            redirect_to list_by_ingredient_path(:ingredient => params[:search])
        end
    end
end
