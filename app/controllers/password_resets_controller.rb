class PasswordResetsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    user.send_password_reset if user
    redirect_to root_url, :notice => "Your password reset has been sent - Please check your email :)"
  end

  def edit
    @user = User.find_by_password_reset_token!(params[:id])
  end

end
