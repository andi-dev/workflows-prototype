class ProcessEventTrigger

  attr_reader :event, :event_trigger, :workflow

  def initialize(event, event_trigger)
    @event = event
    @event_trigger = event_trigger
    @workflow = event_trigger.workflow
  end

  def process!
    ActivateWorkflow.new(@workflow, @event).activate!
  end

end
