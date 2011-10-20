#require 'time'

puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'First User', :email => 'user@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user.name

puts 'SETTING UP DEFAULT RESOURCE'
resource = Resource.create! :name => 'Resource1'
puts 'Resource: created, resource: ' <<resource.name

puts 'SETTING UP DEFAULT RESERVATION'
now = DateTime.new
now = DateTime.now
testtime = now.to_s(:db)
puts testtime
reservation = Reservation.create! :duration => 1, :starttime => testtime, :user => user, :resource => resource
#puts 'Reservation: created 1h reservation for time: '<<reservation.starttime
