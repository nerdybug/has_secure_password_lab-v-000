class UsersController < ApplicationController

  def new

  end

  def create
    @user = User.create(user_params)
    if !@user.save

    end

  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
