class RoomProfile < ActiveRecord::Base

  has_many :rooms
  has_many :bed_profiles, through: :room_bed_profiles
end
