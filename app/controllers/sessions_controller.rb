class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(name: params[:name])
    if user && user.authenticate(params[:user][:name])

    end
  end

  def destroy
    session.clear
    redirect_to controller: 'sessions', action: 'new'
  end
end
