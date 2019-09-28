class SessionsController < ApplicationController

  def new
    #takes you to new.html.erb
  end

  def create
    if params[:name] == nil || params[:name].empty?
      #if the user input is nil or empty
      redirect_to '/login'
    else
      session[:name] = params[:name]
      #if they add something - then set it to the session name
      redirect_to '/'
    end
  end


  def destroy
    session.delete :name
    redirect_to '/'
    #route to another place again
  end

end
