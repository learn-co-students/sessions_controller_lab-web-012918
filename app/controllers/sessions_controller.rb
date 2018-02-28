class SessionsController < ApplicationController

  def new
  end

  def create
    @name = params[:name]
    if @name == '' || @name == nil
      redirect_to '/login'
    else
      session[:name] = @name
      render :logged_in
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end

end
