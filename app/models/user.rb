class User < ActiveRecord::Base
  has_many :bookings
  has_many :rooms, through: :bookings, foreign_key: "guest_id"
end
