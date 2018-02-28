class SessionsController < ApplicationController
  def new

  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    if session.empty?
      session[:name] = nil
      redirect_to '/sessions/login'
    else
      session.delete :name
      redirect_to '/sessions/login'

    end

  end
end
