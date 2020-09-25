class User < ApplicationRecord
  validates :name, presence: true
  validates :username, presence: true, uniqueness: true
  has_many :events, foreign_key: 'creator_id'
  has_many :current_events
  has_many :attended_events, through: :current_events, source: :event
end
