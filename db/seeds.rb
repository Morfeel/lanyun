# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create email: 'morfeel@gmail.com', password: 'Morfeel7511404', given_name: 'Geoffrey', family_name: 'Li', gender: 'male'

## Profiles start
# Bed profiles
BedProfile.create [{name: 'Single'},
                   {name: 'King Single', capacity: 1, length: 2030, width: 1070},
                   {name: 'Double', capacity: 2, length: 1880, width: 1380},
                   {name: 'Queen', capacity: 2, length: 2030, width: 1530},
                   {name: 'King', capacity: 2, length: 2030, width: 1650},
                   {name: 'Super King', capacity: 2, length: 2030, width: 1830}]

# Three single
bedSingle = BedProfile.find_by(name: 'Single')
roomThreeSingles = RoomProfile.new(name: 'Three Singles')
profileThreeSingles = RoomBedProfile.new(bed_profile: bedSingle, room_profile: roomThreeSingles, qty: 3)
roomThreeSingles.bed_count = profileThreeSingles.qty
roomThreeSingles.capacity = bedSingle.capacity * profileThreeSingles.qty
profileThreeSingles.save

# Premium three single
bedKingSingle = BedProfile.find_by(name: 'King Single')
roomPremiumThreeSingles = RoomProfile.new(name: 'Premium Three Singles', price: 200)
profilePremiumThreeSingles = RoomBedProfile.new(bed_profile: bedKingSingle, room_profile: roomPremiumThreeSingles, qty: 3)
roomPremiumThreeSingles.bed_count = profilePremiumThreeSingles.qty
roomPremiumThreeSingles.capacity = bedKingSingle.capacity * profilePremiumThreeSingles.qty
profilePremiumThreeSingles.save

# Two double
bedDouble = BedProfile.find_by(name: 'Double')
roomTwoDoubles = RoomProfile.new(name: 'Two Doubles', price: 150)
profileTwoDoubles = RoomBedProfile.new(bed_profile: bedDouble, room_profile: roomTwoDoubles, qty: 2)
roomTwoDoubles.bed_count = profileTwoDoubles.qty
roomTwoDoubles.capacity = bedDouble.capacity * profileTwoDoubles.qty
profileTwoDoubles.save

# Premium two double
bedQueen = BedProfile.find_by(name: 'Queen')
roomPremiumTwoDoubles = RoomProfile.new(name: 'Premium Two Doubles', price: 250)
profilePremiumTwoDoubles = RoomBedProfile.new(bed_profile: bedQueen, room_profile: roomPremiumTwoDoubles, qty: 2)
roomPremiumTwoDoubles.bed_count = profilePremiumTwoDoubles.qty
roomPremiumTwoDoubles.capacity = bedQueen.capacity * profilePremiumTwoDoubles.qty
profilePremiumTwoDoubles.save

# Premium King
bedKing = BedProfile.find_by(name: 'King')
roomPremiumKing = RoomProfile.new(name: 'Premium King', price: 300)
profilePremiumKing = RoomBedProfile.new(bed_profile: bedKing, room_profile: roomPremiumKing, qty: 1)
roomPremiumKing.bed_count = profilePremiumKing.qty
roomPremiumKing.capacity = bedKing.capacity * profilePremiumKing.qty
profilePremiumKing.save

# Presidential Suite
bedSuperKing = BedProfile.find_by(name: 'Super King')
roomPresidentialSuite = RoomProfile.new(name: 'Presidential Suite', price: 500)
profilePresidentialSuite = RoomBedProfile.new(bed_profile: bedSuperKing, room_profile: roomPresidentialSuite, qty: 1)
roomPresidentialSuite.bed_count = profilePresidentialSuite.qty
roomPresidentialSuite.capacity = bedSuperKing.capacity * profilePresidentialSuite.qty
profilePresidentialSuite.save

## Profiles end

