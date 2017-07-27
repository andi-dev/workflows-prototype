class CreateEventTriggers < ActiveRecord::Migration[5.0]
  def change
    create_table :event_triggers do |t|
      t.integer :workflow_id, :event_type_id
      t.timestamps
    end
  end
end
