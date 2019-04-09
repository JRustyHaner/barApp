class UserProfileController < ApplicationController
    $logged_in = 'false'
    def index
        @user_profile = UserProfile.find(params[:id])
        # render 'user_profile/index.html.erb'
    end

    def check_account
        begin        
            @user_profile = UserProfile.find_by(email: params[:user_profile][:email].downcase)
            if @user_profile && @user_profile.password == params[:user_profile][:password]
                $logged_in = 'true'                
                redirect_to profile_url(@user_profile), notice: "Logged in Successfully."
            else
                redirect_to home_url, alert: "Error: Invalid Email/Password."
            end
        rescue
            redirect_to home_url, alert: "Error: Unable to Login."   
        end
    end

    def logout
        logged = $logged_in
        if logged == 'true'
            $logged_in = 'false'
            redirect_to home_url, notice: "Logged Out Successfully."
        end
    end 

    def show
        @user_profile = UserProfile.find(params[:id])
        # render 'user_profile/show.html.erb'
    end

    def new
        @user_profile = UserProfile.new
        # render 'user_profile/new.html.erb'
    end

    def create
        @user_profile = UserProfile.new(params.require(:user_profile).permit(:name, :email, :mobile, :password, :address, :city, :state, :zipcode, :country, :isBusiness, :role))
        if @user_profile.save
            $logged_in = 'true'
            @new_profile = UserProfile.find(@user_profile.id)
            redirect_to profile_url(@new_profile.id), notice: 'New Account was successfully created.'
        else  
            flash.now[:alert] = 'Error! Unable to Create User Account.'
            render :new 
        end 
    end

end
