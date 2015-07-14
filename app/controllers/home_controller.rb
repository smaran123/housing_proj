class HomeController < ApplicationController
  def index
  end

  def main_home
   render :layout => false
 end

 def land
    if params[:price] == "low"
        @properties = Property.where(:city => params[:city]).order("price asc")

        elsif params[:price] == "high"
         @properties = Property.where(:city => params[:city]).order("price desc")
       elsif params[:price] == "lasc"
         @properties = Property.where(:city => params[:city]).order("location asc")
       elsif params[:price] == "lsdc"
         @properties = Property.where(:city => params[:city]).order("location desc")
       else
        @properties = Property.where(:city => params[:city]).order(:price)
     end
     # @properties = Property.where(:city => params[:city])
     @city = params[:city]
    #    @json = @properties.to_gmaps4rails
    @hash = Gmaps4rails.build_markers(@properties) do |property, marker|
      marker.lat property.latitude
      marker.lng property.longitude
      marker.json({ :id => property.id })
    end
  end


  def land1
      @property = Property.find(params[:id])
    @properties = Property.where(:city => @property.city)
  end

  def gallery

  end

  def image_slide
  end

  def help
  end

  def about
  end
end
