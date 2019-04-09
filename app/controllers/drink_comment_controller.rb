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

    def create
        @drink_comments = DrinkComment.new(params.require(:drink_comment).permit(:likeStatus, :comment, :reviewDate ))
        if @drink_comments.save
            redirect_to drink_comment_url(@drink_comments), notice: "Drink comment was successfully created."
        else
            flash.now[:alert] = 'Error! Unable to create Drink Comment.'
            render :new
        end
    end

    def edit
        @drink_comments = DrinkComment.find(params[:id])
        #renders 'drink_comment/edit.html.erb'
    end

    def update
        @drink_comments = DrinkComment.find(params[:id])
        if @drink_comments.update(params.require(:drink_comment).permit(:likeStatus, :comment, :reviewDate ))
            redirect_to drink_comments_url(@drink_comments), notice: "Drink Comment was successfully updated."
        else
            flash.now[:alert] = 'Error! Unable to update Drink Comment.'
            render :edit
        end
    end

    def destroy
        @drink_comments = DrinkComment.find(params[:id])
        @drink_comments.destroy
        redirect_to drink_comments_url, notice: 'Drink comment was successfully removed.'
    end



    
end
