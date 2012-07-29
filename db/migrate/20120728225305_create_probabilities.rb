class CreateProbabilities < ActiveRecord::Migration
  def change
    create_table :probabilities do |t|
      t.integer :line
      t.decimal :money
      t.integer :event_id, :null => false
      t.string :probability_type
      t.string :context
      t.timestamps
    end
  end
end
