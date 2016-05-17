class RoomReservation < ActiveRecord::Base

  belongs_to :room
  belongs_to :reservation
end
