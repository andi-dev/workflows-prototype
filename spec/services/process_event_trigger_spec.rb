require 'rails_helper'

describe ProcessEvent do
  describe '#process!' do

    let(:event_type) { EventType.create(name: "Test Event") }
    let(:event) { Event.new(event_type: event_type) }
    let(:workflow) { Workflow.create(title: "Do this and that", description: "Do this and then that") }
    let(:event_trigger) { EventTrigger.create(workflow: workflow, event_type: event_type) }

    subject { ProcessEventTrigger.new(event, event_trigger) }

    let(:activate_workflow) { double(:activate_workflow) }

    it 'activates the corresponding workflow in the context of the event instance' do
      expect(ActivateWorkflow).to receive(:new).with(workflow, event).and_return(activate_workflow)
      expect(activate_workflow).to receive(:activate!)
      subject.process!
    end
  end
end
