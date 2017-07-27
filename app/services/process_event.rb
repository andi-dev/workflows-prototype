class ProcessEvent

  attr_reader :event

  def initialize(event)
    @event = event
  end

  def process!
    event.event_type.event_triggers.each do |event_trigger|
      ProcessEventTrigger.new(event, event_trigger).process!
    end
  end

end
