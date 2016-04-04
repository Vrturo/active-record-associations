class Room < ActiveRecord::Base
  belongs_to :hotel
  has_many :bookings
  has_many :guests, class_name: "User"
  has_many :guests, through: :bookings
end
