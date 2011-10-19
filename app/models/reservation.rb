class Reservation < ActiveRecord::Base
  has_one :resource
  has_one :user
  
  attr_accessible :starttime, :duration, :user, :resource
  validates_presence_of :duration, :starttime #, :user, :resource
  
end
