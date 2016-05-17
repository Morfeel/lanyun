# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create email: 'morfeel@gmail.com', password: 'Morfeel7511404', given_name: 'Geoffrey', family_name: 'Li',
            gender: 'male', id_number: rand(1..9).to_s + rand(0..99999999999999999).to_s + (Array('0'..'9') << 'X').sample,
            contact_number: '13' + rand(0..999999999).to_s

names = ['Aleen Boeding', 'Maureen Lockard', 'Luella Sheikh', 'Dirk Gerrity', 'Twana Bruen', 'Long Strahan', 'Mauricio Holladay', 'Nidia Charney', 'Chang Nevins', 'Dante Lahr', 'Dwana Marx', 'Fernande Bayles',
         'Meghann Perrigo', 'Russell Studdard', 'Kelley Vanorden', 'Mason James', 'Lean Fossum', 'Hildegarde Tumlin', 'Michaela Neubauer', 'Toi Jones', 'Paulette Benjamin', 'Chet Covert', 'Corrinne Wilmore', 'Ricky Bunn', 'Brett Goldsby', 'Eloisa Shakespeare', 'Twila Demello', 'Lauran Shannon',
         'Glynda Clewis', 'Selina Sylvester', 'Tresa Alcaraz', 'Retta Ocampo', 'Heide Bukowski', 'Zackary Torpey', 'Scottie Cushenberry', 'Myrtis Buckwalter', 'Ligia Quach', 'Alex Ammann', 'Han Hersey', 'Bettye Lasseter', 'Ardelia Corwin', 'Aurora Holcomb', 'Marcy Belnap', 'Janette Kosakowski', 'Ethyl Chickering', 'Gladys Torkelson',
         'Rolland Pettyjohn', 'Eliseo Schaeffer', 'Jaimie Daggett', 'Tomi Luiz', 'Marcia Muntz', 'Melvina Cumpston', 'Keven Terhune', 'Norman Schulman', 'Justine Gulley', 'Debi Danford', 'Irish Kunzman', 'Marylyn Ventura', 'Jalisa Minns', 'Billi Castonguay', 'Octavio Schippers', 'Keren Runk', 'Eveline Denn', 'Mirian Carlberg',
         'Isabella Yule', 'Dwana Hanrahan', 'Deb Meritt', 'Kristie Doiron', 'Altha Bea', 'Ola Dessert', 'Zulema Clermont', 'Sheryll Cavitt', 'Calista Mcelhaney', 'Jennine Forck', 'Ronna Melito', 'Corrin Brasher', 'Tawanda Nick', 'Laure Mcfalls', 'Sebrina Agee', 'Scarlett Nakasone', 'Kaleigh Spahn', 'Noel Horrocks', 'Nichelle Easler',
         'Tony Yoo', 'Hugo Kilduff', 'Candi Wisniewski', 'Ollie Butter', 'Kelsey Daigre', 'Loraine Bogart', 'Lezlie Slabaugh', 'Krystal Hurston', 'Lorinda Triche', 'Luise Amy', 'Dot Scudder', 'Jeanie Streight', 'Rasheeda Skowron', 'Lucinda Barger', 'Yuriko Crowther', 'Dottie Daughtrey', 'Lea Stenger']

domains = ['aol.com', 'att.net', 'comcast.net', 'facebook.com', 'gmail.com', 'gmx.com', 'googlemail.com', 'google.com', 'hotmail.com', 'hotmail.co.uk', 'mac.com', 'me.com', 'mail.com', 'msn.com', 'live.com', 'sbcglobal.net', 'verizon.net', 'yahoo.com', 'yahoo.co.uk', 'email.com', 'games.com', 'gmx.net', 'hush.com', 'hushmail.com',
           'icloud.com', 'inbox.com', 'lavabit.com', 'love.com', 'outlook.com', 'pobox.com', 'rocketmail.com', 'safe-mail.net', 'wow.com', 'ygm.com', 'ymail.com', 'zoho.com', 'fastmail.fm', 'yandex.com', 'bellsouth.net', 'charter.net', 'comcast.net', 'cox.net', 'earthlink.net', 'juno.com', 'btinternet.com', 'virginmedia.com', 'blueyonder.co.uk',
           'freeserve.co.uk', 'live.co.uk', 'ntlworld.com', 'o2.co.uk', 'orange.net', 'sky.com', 'talktalk.co.uk', 'tiscali.co.uk', 'virgin.net', 'wanadoo.co.uk', 'bt.com', 'sina.com', 'qq.com', 'naver.com', 'hanmail.net', 'daum.net', 'nate.com', 'yahoo.co.jp', 'yahoo.co.kr', 'yahoo.co.id', 'yahoo.co.in', 'yahoo.com.sg', 'yahoo.com.ph',
           'hotmail.fr', 'live.fr', 'laposte.net', 'yahoo.fr', 'wanadoo.fr', 'orange.fr', 'gmx.fr', 'sfr.fr', 'neuf.fr', 'free.fr', 'gmx.de', 'hotmail.de', 'live.de', 'online.de', 't-online.de', 'web.de', 'yahoo.de', 'mail.ru', 'rambler.ru', 'yandex.ru', 'ya.ru', 'list.ru', 'hotmail.be', 'live.be', 'skynet.be', 'voo.be', 'tvcablenet.be', 'telenet.be',
           'hotmail.com.ar', 'live.com.ar', 'yahoo.com.ar', 'fibertel.com.ar', 'speedy.com.ar', 'arnet.com.ar', 'hotmail.com', 'gmail.com', 'yahoo.com.mx', 'live.com.mx', 'yahoo.com', 'hotmail.es', 'live.com', 'hotmail.com.mx', 'prodigy.net.mx', 'msn.com']

names.each do |name|

  firstName = name.split(' ').first
  lastName = name.split(' ').last

  email = firstName+'_'+lastName+'@'+domains.sample

  password = firstName+lastName+rand(0..1000).to_s

  id = rand(1..9).to_s + rand(0..99999999999999999).to_s + (Array('0'..'9') << 'X').sample
  number = '13' + rand(0..999999999).to_s

  User.create email: email, password: password, given_name: firstName, family_name: lastName,
              gender: ['male', 'female'].sample, id_number: id, contact_number: number

end


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
# Loop floors - Normal floors
(1..3).each do |i| # i - floor number

  # Loop rooms
  (1..5).each do |j| # j - room number
    roomProfile = RoomProfile.find_by_name 'Three Singles'
    bedProfile = BedProfile.find_by_name 'Single'
    room = Room.new(name: i.to_s+('0'+j.to_s).last(2))
    roomProfile.rooms << room
    roomProfile.save
    room = Room.find_by_name room.name

    # Loop beds
    (1..3).each do |k| # k - bed number
      bed = Bed.new(name: room.name + '-'+k.to_s)
      bedProfile.beds << bed
      room.beds << bed
    end
    bedProfile.save
  end

  # Loop rooms
  (6..15).each do |j| # j - room number
    roomProfile = RoomProfile.find_by_name 'Two Doubles'
    bedProfile = BedProfile.find_by_name 'Double'
    room = Room.new(name: i.to_s+('0'+j.to_s).last(2))
    roomProfile.rooms << room
    roomProfile.save
    room = Room.find_by_name room.name
    # Loop beds
    (1..2).each do |k| # k - bed number
      bed = Bed.new(name: room.name + '-'+k.to_s)
      bedProfile.beds << bed
      room.beds << bed
    end
    bedProfile.save
  end
end

# Loop floors - Premium floors
(4..5).each do |i| # i - floor number

  # Loop rooms
  (1..5).each do |j| # j - room number
    roomPremiumThreeSingles = RoomProfile.find_by_name 'Premium Three Singles'
    bedKingSingle = BedProfile.find_by_name 'King Single'
    room = Room.new(name: i.to_s+('0'+j.to_s).last(2))
    roomPremiumThreeSingles.rooms << room
    roomPremiumThreeSingles.save
    room = Room.find_by_name room.name

    # Loop beds
    (1..3).each do |k| # k - bed number
      bed = Bed.new(name: room.name + '-'+k.to_s)
      bedKingSingle.beds << bed
      room.beds << bed
    end
    bedKingSingle.save
  end

  # Loop rooms
  (6..15).each do |j| # j - room number
    roomPremiumTwoDoubles = RoomProfile.find_by_name 'Premium Two Doubles'
    bedQueen = BedProfile.find_by_name 'Queen'
    room = Room.new(name: i.to_s+('0'+j.to_s).last(2))
    roomPremiumTwoDoubles.rooms << room
    roomPremiumTwoDoubles.save
    room = Room.find_by_name room.name
    # Loop beds
    (1..2).each do |k| # k - bed number
      bed = Bed.new(name: room.name + '-'+k.to_s)
      bedQueen.beds << bed
      room.beds << bed
    end
    bedQueen.save
  end
end

# Loop floors - King size floors
(6..7).each do |i| # i - floor number

  # Loop rooms
  (1..10).each do |j| # j - room number

    roomPremiumKing = RoomProfile.find_by_name 'Premium King'
    bedKing = BedProfile.find_by_name 'King'
    room = Room.new(name: i.to_s+('0'+j.to_s).last(2))
    roomPremiumKing.rooms << room
    roomPremiumKing.save
    room = Room.find_by_name room.name

    bed = Bed.new(name: room.name + '-1')
    bedKing.beds << bed
    room.beds << bed

    bedKing.save

  end
end

# Presidential Suite
i=8 # i - floor number, only floor 8
# Loop rooms
(1..5).each do |j| # j - room number

  roomPresidentialSuite = RoomProfile.find_by_name 'Presidential Suite'
  bedSuperKing = BedProfile.find_by_name 'Super King'
  room = Room.new(name: i.to_s+('0'+j.to_s).last(2))
  roomPresidentialSuite.rooms << room
  roomPresidentialSuite.save
  room = Room.find_by_name room.name

  bed = Bed.new(name: room.name + '-1')
  bedSuperKing.beds << bed
  room.beds << bed

  bedSuperKing.save

end

puts 'Generate random reservations'
# Reservation
res = Reservation.new
usr = User.find_by_email('morfeel@gmail.com')
usr.reservations << res
room = Room.find_by_name('405')
room.status = 'booked'
room.save

resRoom = RoomReservation.new room: room, reservation: res,
                              start_date: Date.today - 30, end_date: Date.today - 1

resRoom.save

(1..1000).each do |i|

  if i%100 == 0
    puts i.to_s + ' have done!'
  end

  while !defined? @room  or @room.nil? do
    @startDate = Time.at(Time.new(2015, 1, 1) + rand * (Time.new(2016, 12, 31) - Time.new(2015, 1, 1))).to_date
    duration = rand(60) + 1
    @endDate = @startDate + duration

    @room = Room.findAvailableRoom(roomProfile: RoomProfile.offset(rand(RoomProfile.count)).first, startDate: @startDate, endDate: @endDate).first

  end

  usr = User.offset(rand(User.count)).first

  @room.reserve usr: usr, startDate: @startDate, endDate: @endDate
  @room = nil
end
