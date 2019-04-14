class DrinkCommentsController < ApplicationController
    def index
        @drink_comments = DrinkComment.all
    end 
    
    #def show
    #    @drink_comments = DrinkComment.find(params[:id])
        # render 'drink_comments/show.html.erb'
   # end
   
end

 
end
