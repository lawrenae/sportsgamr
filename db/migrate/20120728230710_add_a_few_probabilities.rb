class AddAFewProbabilities < ActiveRecord::Migration
  def up
    Probability.create(:probability_type =>"StraightLine", :line=>0.5, :money=>-125, :context=>"current", :event_id=>1)
    Probability.create(:probability_type =>"MoneyLine", :line=>-115, :context=>"current", :event_id=>1)
    Probability.create(:probability_type =>"Total", :line=>40.5, :money=>'-125', :context=>"current", :event_id=>1)
  end

  def down
    Probability.delete_all
  end
end
