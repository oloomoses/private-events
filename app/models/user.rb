class User < ApplicationRecord
  validates :name, presence: true
  validates :username, presence: true, uniqueness: true
  has_many :events, foreign_key: 'creator_id'
  # has_many :current_events, foreign_key: 'attended_event_id', class_name: 'Event'
  # has_many :attended_events, through: :current_events
end
