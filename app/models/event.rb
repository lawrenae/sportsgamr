class Event < ActiveRecord::Base
  attr_accessible :away_team,:home_team, :event_date
  has_many :probability
end
