class AddAttendeeRefToAttendeeEvents < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :attendee_events, :users, column: :attendee_id
    add_foreign_key :attendee_events, :events, column: :attended_event_id
  end
end
