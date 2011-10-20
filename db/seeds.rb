#require 'time'

puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'First User', :email => 'user@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user.name

puts 'SETTING UP SECOND USER LOGIN'
user2 = User.create! :name => 'Second User', :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user2.name


puts 'SETTING UP DEFAULT RESOURCE'
resource = Resource.create! :name => 'Resource1'
puts 'Resource: created, resource: ' <<resource.name

puts 'SETTING UP SECOND RESOURCE'
resource2 = Resource.create! :name => 'Resource2'
puts 'Resource: created, resource: ' <<resource2.name

puts 'SETTING UP DEFAULT RESERVATION'
now = DateTime.new
now = DateTime.now.midnight + Time.now.hour.hours
testtime = now.to_s(:db)
reservation = Reservation.create! :duration => 1, :starttime => testtime, :user => user, :resource => resource

puts 'SETTING UP SECOND RESERVATION'
onehourlater = DateTime.new
onehourlater = DateTime.now.midnight + Time.now.hour.hours + 1.hour
testtime2 = onehourlater.to_s(:db)
reservation = Reservation.create! :duration => 1, :starttime => testtime2, :user => user, :resource => resource

puts 'SETTING UP THIRD RESERVATION'
reservation = Reservation.create! :duration => 1, :starttime => testtime, :user => user2, :resource => resource2

puts 'SETTING UP FOURTH RESERVATION'
twohourslater = DateTime.new
twohourslater = DateTime.now.midnight + Time.now.hour.hours + 2.hour
testtime4 = twohourslater.to_s(:db)
reservation = Reservation.create! :duration => 1, :starttime => testtime4, :user => user2, :resource => resource


