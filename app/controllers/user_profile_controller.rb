class UserProfileController < ApplicationController
    
    def index
        @user_profile = UserProfile.find(params[:id])
        # render 'user_profile/index.html.erb'
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
            log_in @user_profile
            @new_profile = UserProfile.find(@user_profile.id)
            redirect_to profile_url(@new_profile.id), notice: 'New Account was successfully created.'
        else  
            flash.now[:alert] = 'Error! Unable to Create User Account.'
            render :new 
        end 
    end

    def edit
        @user_profiles = UserProfile.find(params[:id])
        # render 'user_profile/edit.html.erb'
    end

    def update
        begin
            @user_profile = UserProfile.find(params[:id])
            if @user_profile.update(params.require(:user_profile).permit(:mobile, :address, :city, :state, :zipcode, :country, :isBusiness))
                redirect_to show_profile_url(@user_profile), notice: 'Profile was successfully updated.'
            else  
                flash.now[:alert] = 'Error! Unable to update Profile.'
                render :edit 
            end
        rescue            
            redirect_to home_url, alert: "Error: Profile not found."   
        end                    
    end

    def destroy
        @user_profile = UserProfile.find(params[:id])
        name = @user_profile.name
        @user_profile.destroy
        session.delete(:user_id)
        @current_user = nil
        redirect_to home_url, notice: "#{name}'s account was successfully deleted."
    end

end
