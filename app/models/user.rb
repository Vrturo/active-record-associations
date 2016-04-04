class User < ActiveRecord::Base
  has_many :bookings
  has_many :bookings, foreign_key: "guest_id"
  has_many :booked_rooms, through: :bookings, source: :room
  has_many :booked_hotels, through: :booked_rooms, source: :hotel
end
