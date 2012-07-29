require 'spec_helper'

describe LoginController do
  it { should respond_to :index }
  it { should respond_to :login}
  
  it "finds a list of current events and their probabilities" do
    events = Event.find(:all)
    events.should_not be_empty
    
    event = events[0]
    event.probabilities.should_not be_empty
    
    prob_count = 0
    event.probabilities.each do |prob|
      if prob.probability_type == "MoneyLine" and event.home_team == prob.team_name then
        prob_count +=1
      end
      
      prob.line.should_not be_nil
    end
    
    prob_count.should eq 1
  end
end
