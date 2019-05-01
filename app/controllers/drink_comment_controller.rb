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
        @drink_comments.reviewDate = Time.current
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
        
        begin
            @user_profile = UserProfile.includes(:comments).find(session[:user_id].to_i)    
        rescue => exception
            redirect_to home_url, notice: "User not found. Please log in."
        end
        @user_profile.comments << @drink_comments


        if (@recipe.save && @user_profile.save)
            redirect_to recipe_url(@recipe), notice: "Review on drink is successfully submitted."
        else
            flash.now[:alert] = 'Error! Unable to create review on Drink'
            render :new
        end


    end

    def edit
        
        @drink_comments = DrinkComment.find(params[:id])
        @recipess = @drink_comments.recipes
       
        if (@drink_comments.userprofile_id != session[:user_id].to_i)
            redirect_to recipe_url(@recipess), alert: "Not your comment."
            ##redirect_to list_index_url, alert: "Not your comment."
        end
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
                
        if (@drink_comments.userprofile_id == session[:user_id].to_i)
            @drink_comments.destroy
            redirect_to recipe_url(@recipesss), notice: 'Review on Drink was successfully removed.'
        else
            redirect_to recipe_url(@recipesss), alert: "Not your comment."
            ##redirect_to list_index_url, alert: "Not your comment."
        end

    end 
end
