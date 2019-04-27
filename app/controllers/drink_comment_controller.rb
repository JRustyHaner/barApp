class DrinkCommentController < ApplicationController

    # def index
    #     @drink_comments = DrinkComment.all
    # end

    # def show
    #     @drink_comments = DrinkComment.find(params[:id])
    #     # render 'drink_comments/show.html.erb'
    # end

    def new
        begin
            @recipe = Recipe.find(params[:recipe_id])
        rescue 
            redirect_to recipes_url, alert: 'Error: Recipe not found'

        end
        @drink_comments = DrinkComment.new
        #render drink_comments//new.html.erb'
    end

    def create
        begin
            @recipe = Recipe.find(params[:recipe_id])
        rescue 
            redirect_to recipes_url, alert: 'Error: Recipe not found'
        end

        @drink_comments = DrinkComment.new(params.require(:drink_comment).permit(:likeStatus, :comment, :reviewDate ))
        @recipe.reviews << @drink_comments
        
        if @recipe.save
            redirect_to recipe_url(@recipe), notice: "Review on drink is successfully submitted."
        else
            flash.now[:alert] = 'Error! Unable to create review on Drink'
            render :new
        end
    end

    def edit
        @drink_comments = DrinkComment.find(params[:id])
        #renders 'drink_comment/edit.html.erb'
    end

    def update
        begin
            @drink_comments = DrinkComment.find(params[:id])
        rescue
            redirect_to recipes_url, alert: 'Error: Drink comment not found'
        end

        if @drink_comments.update(params.require(:drink_comment).permit( :likeStatus, :comment, :reviewDate ))
            redirect_to recipe_url(@drink_comments.recipes), notice: "Review on Drink was successfully updated."
        else
            flash.now[:alert] = 'Error! Unable to update review on Drink'
            render :edit
        end
    end

    def destroy
        begin
          @drink_comments = DrinkComment.find(params[:id])
        rescue
          redirect_to recipes_url, alert: 'Error: Drink comment not found'
          
        end
        @recipesss = @drink_comments.recipes
        @drink_comments.destroy
        redirect_to recipe_url(@recipesss), notice: 'Review on Drink was successfully removed.'
    end 
end
