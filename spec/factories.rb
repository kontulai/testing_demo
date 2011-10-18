require 'factory_girl'

Factory.define :user do |u|
  u.name 'testing'
  u.email 'testing@test.com'
  u.password 'password'
end