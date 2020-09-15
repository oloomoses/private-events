class CreateCurrentEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :current_events do |t|
      t.integer :attendee_id
      t.integer :attended_event_id
    end
  end
end
