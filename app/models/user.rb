class User < ApplicationRecord
    has_secure_password
    has_many :events
    has_many :comments
    has_many :attendances
    has_many :attended_events, through: :attendances, source: :event
end
