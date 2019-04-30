class SessionsController < ApplicationController
  def new
  end

  def create
    user = UserProfile.find_by(email: params[:session][:email].downcase)
    if user && user.password == params[:session][:password]
      log_in user
      redirect_to profile_url(user)
    else
      flash.now[:alert] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to home_url
  end
  
end
