class Reservation < ActiveRecord::Base
  belongs_to :resource
  belongs_to :user
  
  attr_accessible :starttime, :duration, :user, :resource
  validates_presence_of :duration, :starttime #, :user, :resource
  
end
