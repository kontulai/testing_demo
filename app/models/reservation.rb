class Reservation < ActiveRecord::Base
  has_one :resource
  has_one :user
  
  attr_accessible :date, :starttime, :user, :resource
  validates_presence_of :date, :starttime, :user, :resource
  validates_uniqueness_of :date, :time, :user, :resource, :case_sensitive => false
  
end
