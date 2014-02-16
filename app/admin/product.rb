ActiveAdmin.register Product do
	index do
		column :name do |q|
      Category.find_by_id(q.category_id).name
    end
		column :product_name
		column "Image" do |product|
			image_tag product.image.url(:tiny)
		end
		column :price
		column :description  
	end
	form :html => {:multipart => true} do |f|
    f.inputs do
    	f.input :category_id, :as => :select, :collection => Category.all.collect{|a| [a.name, a.id]}, :include_blank => false, :prompt => "please select category"
      f.input :product_name
      f.input :image
      f.input :price
      f.input :description
    end
    f.actions
  end
end
