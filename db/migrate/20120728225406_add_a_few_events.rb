class AddAFewEvents < ActiveRecord::Migration
  def up
    Event.create!(:away_team=>"New Jersey Devils",:home_team=>"Boston Bruins", :event_date=>DateTime.new(2012,10,29,19,05,0))
  end

  def down
    Event.delete_all
  end
end
