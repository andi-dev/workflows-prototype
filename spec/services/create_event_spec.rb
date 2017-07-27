require 'rails_helper'

describe CreateEvent do
  describe '#create!' do

    let(:event_type) { EventType.create(name: "Test Event") }

    subject { CreateEvent.new(event_type) }

    it 'creates a new event instance for that type' do
      expect { subject.create! }.to change { Event.count }.from(0).to(1)
    end

  end
end
