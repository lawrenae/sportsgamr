class AddAFewProbabilities < ActiveRecord::Migration
  def up
    Probability.create(:probability_type =>"MoneyLine", :team_name=>"Cincinnati Reds", :line=>-192, :context=>"current", :event_id=>1)
    Probability.create(:probability_type =>"RunLine", :team_name=>"Cincinnati Reds", :line=>-1.5, :money=>100, :context=>"current", :event_id=>1)
    Probability.create(:probability_type =>"Total", :team_name=>"Cincinnati Reds", :line=>9.5, :money=>'-120', :context=>"current", :event_id=>1)

    Probability.create(:probability_type =>"MoneyLine", :team_name=>"Colorado Rockies", :line=>181, :context=>"current", :event_id=>1)
    Probability.create(:probability_type =>"RunLine", :team_name=>"Colorado Rockies", :line=>1.5, :money=>-120, :context=>"current", :event_id=>1)
    Probability.create(:probability_type =>"Total", :team_name=>"Colorado Rockies", :line=>9.5, :money=>'100', :context=>"current", :event_id=>1)
  end

  def down
    Probability.delete_all
  end
end
