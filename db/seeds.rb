
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'First User', :email => 'user@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user.name

puts 'SETTING UP DEFAULT RESOURCE'
user = Resource.create! :name => 'Resource1'
puts 'Resource: created'