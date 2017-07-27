class Workflow < ApplicationRecord
  has_many :event_triggers
  has_many :tasks
end
