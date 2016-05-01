class BedProfile < ActiveRecord::Base
  has_many :beds
  has_many :room_profiles, through: :room_bed_profiles
end
