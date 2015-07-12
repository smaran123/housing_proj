class HomeController < ApplicationController
  def index
  end

  def main_home
     render :layout => false
  end

  def land

      @properties = Property.where(:city => params[:city])
   
    @city = params[:city]
    #    @json = @properties.to_gmaps4rails
    @hash = Gmaps4rails.build_markers(@properties) do |property, marker|
      marker.lat property.latitude
      marker.lng property.longitude
      marker.json({ :id => property.id })
    end
  end

  def land1
  end

  def help
  end

  def about
  end
end
