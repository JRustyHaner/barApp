class ListController < ApplicationController
    def index
        @drinks = Recipe.all()
    end
    def country
        @drinks = Recipe.where(drinkLocation: params[:country])
    end
    def ingredients
    end
    def type
        @drinks = Recipe.where(drinkType: params[:type])
    end
    def occasion
        @drinks = Recipe.where(specialDate: params[:occasion])
    end
    #def top
        
   # end
    def new
        @drinks = Recipe.order(created_at: :asc).reverse_order.limit(10)

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
