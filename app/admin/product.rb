ActiveAdmin.register Product do
	index do
		column :product_name
		column "Image" do |product|
			image_tag product.image.url(:tiny)
		end
		column :price
		column :description  
	end
end
