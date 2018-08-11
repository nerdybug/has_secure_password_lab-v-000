class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(name: params[:user][:name])
    if user && user.authenticate(params[:user][:password])
      password_confirmation = params[:user][:password_confirmation]
      if user.authenticate(password_confirmation)
        session[:user_id] = user.id
        redirect_to home_path(user)
      end

    else
      flash[:error] = "Nope - try again."
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    redirect_to controller: 'sessions', action: 'new'
  end
end
