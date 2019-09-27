class SessionsController < ApplicationController

	def new
  end

  def create
    username = params[:name]
    if username && !username.empty?
      session[:name] = username
      redirect_to '/'
    else
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end

end
