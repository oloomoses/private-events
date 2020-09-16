class CreateCurrentEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :current_events do |t|
      t.integer :user_id
      t.integer :event_id
      t.timestamp
    end
    add_index :current_events, :user_id
    add_index :current_events, :event_id
  end
end
