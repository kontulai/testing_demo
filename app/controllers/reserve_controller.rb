class ReserveController < ApplicationController
  
  #params should include user, time and resource
  def reserve_resource
    puts 'doing reserve'
    #reservation = Reservation.create! :duration => 1, :starttime => testtime, :user => user, :resource => resource
    
  end
  
  def create
   reserve_time = params[:reservetime]
   logger.debug "reserve_time: "+reserve_time
   reservation = Reservation.create(:duration => 1, :starttime => reserve_time, :user => User.find(params[:user_id]), :resource => Resource.find(params[:resource_id]))
   #reservation = Reservation.create! :duration => 1, :starttime => reserve_time, :user => User.find(params[:user_id]), :resource => Resource.find(params[:resource_id])
   
   
   redirect_to '/resources/'+params[:resource_id]
   
   
  end  
end
