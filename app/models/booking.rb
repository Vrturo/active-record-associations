class Booking < ActiveRecord::Base
  belongs_to :guest, class_name: "User"
  has_many :hotel
  belongs_to :room
  belongs_to :hotel
end
