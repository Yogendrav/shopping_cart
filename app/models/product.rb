class Product < ActiveRecord::Base
  attr_accessible :ccolor, :image, :lens_options, :product_name, :quantity, :image_file_name, :image_content_type, :image_file_size, :price, :description
  has_attached_file :image, :styles => { :small => "150x150>", :tiny => "100x100", :large => "300X300>" },
  :url => "/assets/products/:id/:style/:basename.:extension",
  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"


	def self.search(search)
	  if search
	    find(:all, :conditions => ['product_name LIKE ?', "%#{search}%"])
	  else
	    find(:all)
	  end
	end
end
