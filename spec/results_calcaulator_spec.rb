require 'resultscalculator'

describe ResultsCalculator do
    it "calculates winnings for a bet of 100 points with +105 odds" do
       winnings = ResultsCalculator.calculate_moneyline +105, 100, :win
       winnings.should be 105
    end

    it "calculates winnings for a bet of 100 points with -105 odds" do
       winnings = ResultsCalculator.calculate_moneyline -105, 100, :win
       winnings.should eq 95.24
    end

    it "calculates winnings for a bet of 105 points with -105 odds" do
       winnings = ResultsCalculator.calculate_moneyline -105, 105, :win
       winnings.should eq 100
    end

    it "calculates winnings for a bet of 200 points with +135 odds" do
       winnings = ResultsCalculator.calculate_moneyline +135, 200, :win
       winnings.should eq 270
    end

end

