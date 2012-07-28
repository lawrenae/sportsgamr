class LoginController < ApplicationController
  def index
  end
  
  def login
    redirect_to '/home'
  end
end
