class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  # has_many :current_events, foreign_key: 'attendee_id', class_name: 'User'
  # has_many :attendees, through: :current_events
end
