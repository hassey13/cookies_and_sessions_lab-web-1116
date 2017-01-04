class SessionsController < ApplicationController

  def new

  end

  def create
    session[:user] = "session"
    redirect_to products_path
  end

  def destroy
    session[:user] = nil
    #clear cart
    redirect_to products_path
  end

end
