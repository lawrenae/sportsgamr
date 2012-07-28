
class ResultsCalculator
#    attr_accessor :description, :estimate

    def self.calculate_moneyline odds, bet, win
        odds_as_integer = odds.to_i
        if odds_as_integer > 0 then
          percentage = odds/100.0
          return (bet*percentage).to_i
        else 
          return (bet/odds.abs.to_f * 100).round(2)
        end
        return 0
    end
end
