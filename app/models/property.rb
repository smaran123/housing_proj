class Property < ActiveRecord::Base
has_many :images, :dependent => :destroy
	accepts_nested_attributes_for :images, :allow_destroy => true, :reject_if=>:all_blank
	has_attached_file :document
	validates_attachment_content_type :document, :content_type => ["application/msword","text/plain",'application/pdf'], :message => 'Only PDF, WORD or TEXT files are allowed. '
  #validates_attachment_presence :document
validates :location, :description, :state,:city,:email, :presence => true
# def gmaps4rails_address
#  "#{self.city}, #{self.location} "
# end
  after_validation :geocode
 geocoded_by :address

def address
 [latitude, longitude].compact.join(', ')
end  
  
  
def gmaps4rails_address
 "#{self.latitude}, #{self.longitude} "
end



def address
  [location, city, state].compact.join(', ')
end

end
