class ResourcesController < ApplicationController
  def show
     @resource = Resource.find(params[:id])
     #all reservations for today as default
     @reservations = Reservation.where(:starttime => (Time.now.midnight).to_s(:db)..(Time.now.midnight + 1.day).to_s(:db)).where(:resource_id => params[:id]).order(:starttime)
     
  end
  
  def reserve_resource
    puts 'doing reserve here'
  end

end
