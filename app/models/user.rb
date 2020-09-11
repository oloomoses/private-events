class User < ApplicationRecord
  validates :name, presence: true
  validates :username, presence: true, uniqueness: true
  has_many :events
end
