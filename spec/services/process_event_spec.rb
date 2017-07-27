require 'rails_helper'

describe ProcessEvent do
  describe '#process!' do

    let(:event_type) { EventType.create(name: "Test Event") }
    let(:event) { Event.new(event_type: event_type) }

    subject { ProcessEvent.new(event) }

    context 'given one or more event triggers for the events of this type' do
      let(:workflow1) { Workflow.create(title: "Do this and that", description: "Do this and then that") }
      let(:workflow2) { Workflow.create(title: "Think about that, but then do this", description: "Consider this, but then focus on that!") }


      let!(:event_trigger_workflow1) { EventTrigger.create(workflow: workflow1, event_type: event_type) }
      let!(:event_trigger_workflow2) { EventTrigger.create(workflow: workflow2, event_type: event_type) }

      let(:process_event_trigger) { double(:process_event_trigger) }

      it 'creates a new event instance for that type' do
        expect(ProcessEventTrigger).to receive(:new).twice.and_return(process_event_trigger)
        expect(process_event_trigger).to receive(:process!).twice
        subject.process!
      end
    end
  end
end
