class EventType < ApplicationRecord

  has_many :events
  has_many :event_triggers

end
