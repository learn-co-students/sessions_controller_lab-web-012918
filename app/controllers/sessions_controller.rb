class SessionsController < ApplicationController

  def new
  end

  def create
    @name = params[:name]
    if session[:name]
      redirect_to '/'
    elsif !@name || @name == ""
      redirect_to '/sessions/new'
    else
      session[:name] = @name
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end
end
