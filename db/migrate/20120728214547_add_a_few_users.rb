class AddAFewUsers < ActiveRecord::Migration
  def up
    User.create!(:username=>'austin', :password=>'powers', :first_name=>'Austin', :last_name=>"Hackett", :account_balance=>500)
    User.create!(:username=>'nick', :password=>'nick', :first_name=>'Nick', :last_name=>"Weintge", :account_balance=>741)
  end

  def down
    User.delete_all
  end
end
