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
    @property = Property.find(params[:id])
    @images = Image.where(:property_id =>@property.id)
  end

  def image_slide
    @property = Property.find(params[:id])
    @images = Image.where(:property_id =>@property.id)
  end

  def help
  end

  def about
  end

  def requirement
    if request.post?
     # Contact.send_contact(params[:selectreq],params[:selectcity], params[:username], params[:email], params[:usrtel], params[:req]).deliver
     RequirementMailer.send_requirement(params[:selectreq],params[:selectcity], params[:username], params[:email], params[:usrtel], params[:req]).deliver
     flash[:notice] = "your Requirement has been successfuly submited"
     redirect_to '/'
   else
    render :partial => "requirement"
  end
end
end
