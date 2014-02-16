class Product < ActiveRecord::Base
  attr_accessible :image, :product_name, :image_file_name, :image_content_type, :image_file_size, :price, :description
  attr_accessor :image_file_name
  has_attached_file :image, :styles => { :small => "150x150>", :tiny => "100x100", :large => "300X300>" },
  :url => "/assets/products/:id/:style/:basename.:extension",
  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
  # belongs_to :category

	# def self.search(search)
	#   if search
	#     find(:all, :conditions => ['product_name LIKE ?', "%#{search}%"])
	#   else
	#     find(:all)
	#   end
	# end
end
