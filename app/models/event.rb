class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :current_events
  has_many :attendees, through: :current_events, source: :user

  scope :past, -> { where 'date < ?', Date.today }

  scope :upcoming, -> { where 'date >= ?', Date.today }
end
