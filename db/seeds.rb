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
reservation = Reservation.create! :duration => 1, starttime: now.to_s(:db), user: => User.where(name like 'First Name'), resource: => Resource.where(name like 'Resource1')
puts 'Reservation: created 1h reservation for time: '<<reservation.starttime
