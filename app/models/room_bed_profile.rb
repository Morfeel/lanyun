class RoomBedProfile < ActiveRecord::Base

  belongs_to :room_profile
  belongs_to :bed_profile
end
