class EventTrigger < ApplicationRecord
  belongs_to :workflow
  belongs_to :event_type
end
