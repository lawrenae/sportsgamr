
class ResultsCalculator
#    attr_accessor :description, :estimate

    def self.calculate_moneyline_winnings line, bet, win
        line_as_integer = line.to_i
        if line_as_integer > 0 then
          percentage = line/100.0
          return (bet*percentage).to_i
        else 
          return (bet/line.abs.to_f * 100).round(2)
        end
        return 0
    end
    
    
    def self.calculate_moneyline_probability line
      if line.to_i > 0 then
        x = 100/(line+100).to_f*100
      else
        abs_line = line.abs
        x = abs_line/(100+abs_line).to_f*100
      end
      return x.ceil
    end
end
