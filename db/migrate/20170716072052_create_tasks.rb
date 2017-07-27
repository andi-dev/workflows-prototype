class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.integer :event_trigger_id
      t.integer :workflow_id
      t.text :data
      t.timestamps
    end
  end
end
