class Image < ActiveRecord::Base
	belongs_to :property
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
 # validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
#  validates_attachment_presence :image
end
