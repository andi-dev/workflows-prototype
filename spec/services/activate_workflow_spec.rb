require 'rails_helper'

describe ActivateWorkflow do


  let(:workflow) { Workflow.create }
  let(:event) { Event.create(data: "this is some data") }

  subject { ActivateWorkflow.new(workflow, event) }

  describe '#activate!' do

    it 'creates a new task for that workflow' do
      expect { subject.activate! }.to change { workflow.tasks.count }.by(1)
    end

    it 'passes the events data to that new task' do
      subject.activate!
      expect(Task.last.data).to eq(event.data)
    end
  end
end
