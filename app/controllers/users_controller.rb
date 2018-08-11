class UsersController < ApplicationController

  def new

  end

  def create
    @user = User.create(user_params)
    if !@user.save
      redirect_to '/new'
    else
      session[:user_id] = @user.id
      redirect_to home_path
    end
  end

  def home

  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
