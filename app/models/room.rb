class Room < ActiveRecord::Base

  has_many :beds
  has_and_belongs_to_many :reservations

end
