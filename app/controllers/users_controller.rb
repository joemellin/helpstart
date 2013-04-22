class UsersController < ApplicationController
  before_filter :authenticate_user!, only: :myrequests
  def show
    @user = User.find(params[:id])
  end
  def myrequests
    @user = current_user
  end
end