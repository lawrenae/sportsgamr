class AddAFewEvents < ActiveRecord::Migration
  def up
    Event.create!(:away_team=>"Colorado Rockies",:home_team=>"Cincinnati Reds", :event_date=>DateTime.new(2012,10,29,19,05,0))
  end

  def down
    Event.delete_all
  end
end
