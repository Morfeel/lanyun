class Reservation < ActiveRecord::Base

  has_many :room_reservations
  belongs_to :user

  has_many :rooms, through: :room_reservation
end
