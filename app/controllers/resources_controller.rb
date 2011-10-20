class ResourcesController < ApplicationController
  def show
     @resource = Resource.find(params[:id])
     #all reservations for today as default
     @reservations = Reservation.where(:starttime => (Time.now.midnight)..Time.now.midnight + 1.day).where(:resource_id => params[:id]).order(:starttime)
     
  end

end
