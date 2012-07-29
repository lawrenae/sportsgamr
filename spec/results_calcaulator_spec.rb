require 'resultscalculator'

describe ResultsCalculator do
    it "calculates winnings for a bet of 100 points with +105 odds" do
       winnings = ResultsCalculator.calculate_moneyline_winnings +105, 100, :win
       winnings.should be 105
    end

    it "calculates winnings for a bet of 100 points with -105 odds" do
       winnings = ResultsCalculator.calculate_moneyline_winnings -105, 100, :win
       winnings.should eq 95.24
    end

    it "calculates winnings for a bet of 105 points with -105 odds" do
       winnings = ResultsCalculator.calculate_moneyline_winnings -105, 105, :win
       winnings.should eq 100
    end

    it "calculates winnings for a bet of 200 points with +135 odds" do
       winnings = ResultsCalculator.calculate_moneyline_winnings +135, 200, :win
       winnings.should eq 270
    end

    it "calculates positive moneyline probability to the nearest whole integer" do
      probability = ResultsCalculator.calculate_moneyline_probability +105
      probability.should eq 49
    end

    it "calculates negative moneyline probability to the nearest whole integer" do
      probability = ResultsCalculator.calculate_moneyline_probability -192
      probability.should eq 66
    end
    
    it "calculates positive straight line probability to the nearest whole integer" do
      pending
      # probability = ResultsCalculator.calculate_straightline_probability 
      # probability.should eq 66
    end
end

