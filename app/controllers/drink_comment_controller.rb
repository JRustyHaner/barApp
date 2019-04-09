class DrinkCommentController < ApplicationController

    def index
        @drink_comments = DrinkComment.all
    end

    
end
