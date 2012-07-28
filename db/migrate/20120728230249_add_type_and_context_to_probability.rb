class AddTypeAndContextToProbability < ActiveRecord::Migration
  def change
    change_table :probabilities do |t|
      t.string :type
      t.string :context
    end
  end
end
