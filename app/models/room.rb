class Room < ActiveRecord::Base

  has_many :beds
  has_many :room_reservations
  has_many :reservations, through: :room_reservations
  belongs_to :room_profile

  def self.findAvailableRoom (roomProfile:, startDate: Date.today, endDate: (Date.today + 1))
    if (roomProfile.is_a? RoomProfile) and endDate > startDate # Validation && startDate >= Date.today && endDate >= Date.today &&
      availableRooms = roomProfile.rooms.select do |room|
        room.room_reservations.empty? or room.isAvailable(startDate: startDate, endDate: endDate)
      end
    end
    return availableRooms
  end

  def isAvailable (startDate: Date.today, endDate: (Date.today + 1))

    self.room_reservations.each do |res|
      if (startDate >= res.start_date and startDate <= res.end_date) or (endDate >= res.start_date and endDate <= res.end_date) or (startDate <= res.start_date and endDate >= res.end_date)
        return false
      end
    end

    return true
  end

  def reserve (usr: current_user,startDate: Date.today, endDate: (Date.today + 1))

    res = Reservation.new
    usr.reservations << res

    self.status = 'booked'
    self.save

    resRoom = RoomReservation.new room: self, reservation: res,
                                  start_date: startDate, end_date: endDate
    resRoom.save
  end

end

