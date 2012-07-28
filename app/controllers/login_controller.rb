class LoginController < ApplicationController
  def index
  end
  
  def login
    session[:user] = User.find_by_username params[:username]  
    #if user exists, we're good  
    redirect_to '/home'
  end
end
