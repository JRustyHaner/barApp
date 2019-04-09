class DrinkCommentController < ApplicationController

    def index
        @drink_comments = DrinkComment.all
    end

    def show
        @drink_comments = DrinkComment.find(params[:id])
        # render 'drink_comments/show.html.erb'
    end

    def new
        @drink_comments = DrinkComment.new
        #render drink_comments//new.html.erb'
    end

    
end
