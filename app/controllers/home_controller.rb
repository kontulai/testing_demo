class HomeController < ApplicationController
  def index
    @users = User.all
    @resources = Resource.all
  end

end
