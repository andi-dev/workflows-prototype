class CreateEventInstances < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.integer :event_type_id
      t.boolean :processed, default: false
      t.text :data
      t.timestamps
    end
  end
end
