class CreateEvent

  attr_reader :event_type

  def initialize(event_type)
    @event_type = event_type
  end

  def create!
    event_type.events.create
  end

end
