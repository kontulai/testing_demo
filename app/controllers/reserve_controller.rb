class ReserveController < ApplicationController
  
  #params should include user, time and resource
  def reserve_resource
    puts 'doing reserve'
    #reservation = Reservation.create! :duration => 1, :starttime => testtime, :user => user, :resource => resource
    
  end
  
  def create

   reservation = Reservation.create(:duration => 1, :starttime => params[:reservetime], :user => User.find(params[:user_id]), :resource => Resource.find(params[:resource_id]))
   #reservation = Reservation.create! :duration => 1, :starttime => reserve_time, :user => User.find(params[:user_id]), :resource => Resource.find(params[:resource_id])
   
   
   redirect_to '/resources/'+params[:resource_id]
   
   
  end
  def cancel
  #this is slightly hacky but does what is suppose to do 
  deleteDate = DateTime.parse(params[:reservetime])
  logger.debug "cancel clicked: "+deleteDate.to_s(:db)
  reservation = Reservation.delete_all(:duration => 1, :starttime => (deleteDate.to_s(:db)..(deleteDate+1.hours).to_s(:db)) , :user_id => User.find(params[:user_id]), :resource_id => Resource.find(params[:resource_id]))
  redirect_to '/resources/'+params[:resource_id]
  end   
end
