class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else
      redirect_to '/'
      session[:name] = params[:name]
    end
  end

  def destroy
    if session[:name]
      session.delete :name
      redirect_to controller: 'application', action: 'hello'
    else
      session[:name] = nil
      redirect_to '/login'
    end
  end

end
