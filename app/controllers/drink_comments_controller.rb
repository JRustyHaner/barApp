class DrinkCommentsController < ApplicationController
    def index
        @drink_comments = DrinkComment.all
    end 

   
end
