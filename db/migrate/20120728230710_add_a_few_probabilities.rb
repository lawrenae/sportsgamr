class AddAFewProbabilities < ActiveRecord::Migration
  def up
    Probability.create(:type =>"StraightLine", :line=>0.5, :money=>-125, :context=>"current")
    Probability.create(:type =>"MoneyLine", :line=>-115, :context=>"current")
    Probability.create(:type =>"Total", :line=>40.5, :money=>'-125', :context=>"current")
  end

  def down
    Probability.delete_all
  end
end
