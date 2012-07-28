class AddAccountBalanceToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.integer :account_balance
    end
  end
end
