class Event < ApplicationRecord
  validates :location, presence: true, length: {minimum:6, maximum:20}
  validates :about, presence: true
  validates :title, presence: true
  validates :event_date, presence: true


  belongs_to :creator, class_name: "User"

  has_many :attendee_events, foreign_key: :attended_event_id
  has_many :attendees, through: :attendee_events, source: :attendee

end
