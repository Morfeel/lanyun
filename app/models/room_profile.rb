class RoomProfile < ActiveRecord::Base

  has_many :rooms
  has_many :room_reservations
  has_many :room_bed_profiles
  has_many :bed_profiles, through: :room_bed_profiles
end
