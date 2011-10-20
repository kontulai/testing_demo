class ResourcesController < ApplicationController
  def show
     @resource = Resource.find(params[:id])
     #@reservation = Reservation.where("resource_id = "+params[:id])
     @reservations = Reservation.all
  end

end
