class CreateProbabilities < ActiveRecord::Migration
  def change
    create_table :probabilities do |t|
      t.integer :line
      t.decimal :money

      t.timestamps
    end
  end
end
