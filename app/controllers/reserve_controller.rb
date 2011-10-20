class ReserveController < ApplicationController
  
  #params should include user, time and resource
  def reserve_resource
    puts 'doing reserve'
    #reservation = Reservation.create! :duration => 1, :starttime => testtime, :user => user, :resource => resource
    
  end
  
  def create(:params)
   reservation = Reservation.create! :duration => 1, :starttime => params(:starttime), :user => params(:user), :resource => params(:resource)
   
   redirect_to abc
   
  end  
end
