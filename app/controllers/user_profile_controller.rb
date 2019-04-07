class UserProfileController < ApplicationController
    def index
        # @user_profile = UserProfile.all
        # render 'user_profile/index.html.erb'
    end

    def new
        @user_profile = UserProfile.new
        # render 'user_profile/new.html.erb'
    end

    def create
        @user_profile = UserProfile.new(params.require(:user_profile).permit(:name, :email, :mobile, :password, :address, :city, :state, :zipcode, :country, :isBusiness))
        if @user_profile.save
            redirect_to profile_url, notice: 'New Account was successfully created.'
        else  
            flash.now[:alert] = 'Error! Unable to Create User Account.'
            render :new 
        end 
    end

end
