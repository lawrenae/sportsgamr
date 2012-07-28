class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :password, :username, :account_balance
  validates_presence_of :username
  
end
