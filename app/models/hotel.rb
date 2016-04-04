class Hotel < ActiveRecord::Base
  has_many :rooms
  has_many :bookings
  has_many :bookings, through: :rooms
  has_many :booked_guests, class_name: "User"

end
