class DrinkCommentsController < ApplicationController
    def index
        @drink_comments = DrinkComment.all
    end 

    def show
        @drink_comments = DrinkComment.includes(:ingredients).find(params[:id])
        #renders 'recipe/show.html.erb'
    end
end
