class ActivateWorkflow

  attr_reader :workflow, :event

  def initialize(workflow, event)
    @workflow = workflow
    @event = event
  end

  def activate!
    workflow.tasks.create!(data: event.data)
  end
end
