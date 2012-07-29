class Probability < ActiveRecord::Base
  attr_accessible :line, :money, :probability_type, :context, :event_id, :team_name
  belongs_to :event
  validates :event_id, :presence => true
end
