class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :home_team
      t.string :away_team
      t.timestamp :event_date

      t.timestamps
    end
  end
end
