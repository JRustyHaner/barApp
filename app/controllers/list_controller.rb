class ListController < ApplicationController
    def index
        @drinks = Recipe.all()
    end
    def top
        
    end
    def new
        @drinks = Recipe.order(created_at: :asc).reverse_order.limit(10)
    end
end
