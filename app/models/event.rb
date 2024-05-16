class Event < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :attendances
  has_many :attendees, through: :attendances, source: :user
end
