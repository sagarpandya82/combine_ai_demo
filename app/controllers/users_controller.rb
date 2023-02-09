class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    render
  end

  def follow
    @user = User.find(params[:user_id])
    @current_user = User.find(params[:current_user_id])
    @user.followers.push @current_user.id
    @user.save

    @current_user.following.push @user.id
    @current_user.save
    flash.now[:notice] = "User followed!"
    redirect_back fallback_location: root_path
  end

  def unfollow
    @user = User.find(params[:user_id])
    @current_user = User.find(params[:current_user_id])
    @user.followers.delete @current_user.id
    @user.save

    @current_user.following.delete @user.id
    @current_user.save
    flash.now[:notice] = "User followed!"
    redirect_back fallback_location: root_path
  end
end