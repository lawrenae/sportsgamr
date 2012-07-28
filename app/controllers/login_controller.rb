class LoginController < ApplicationController
  def index
  end
  
  def login
    session[:user] = User.find_by_username params[:username]    
    redirect_to '/home'
  end
end
