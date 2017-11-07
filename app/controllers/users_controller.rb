class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:follow]

  def show
    @user = User.find(params[:id])
    @tweets = @user.tweets
  end

  def follow
    @user = User.find(params[:id])
    current_user.following_users << @user
    redirect_to show_user_url(@user)
  end
end
