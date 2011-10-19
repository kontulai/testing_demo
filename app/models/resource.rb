class Resource < ActiveRecord::Base
  attr_accessible :name
  #add other attributes such as location later
  validates_presence_of :name
  validates_uniqueness_of :name
  has_many :reservation
end
