class ProductsController < ApplicationController
	before_filter :load_category

	def index
		@products = Product.paginate(:page => params[:page], :per_page => 9).search(params[:search])
	end
	def new
		@product = Product.new
	end
	def show
		@product = Product.find(params[:id])
	end
	def edit
		@categories = Category.all
		@product = Product.find(params[:id])
	end
	def create
    @product =  @category.products.build(params[:product])
    if @product.save
		  redirect_to category_product_path(@category,@product)
		else
		  render :new
		end 
	end

	def destroy
		@product = Product.find(params[:id])
		if @product.delete
			redirect_to :action => "index"
		else
			render 'index'
		end
	end
	def update
		@categories = Category.where(parent_id: nil)
		@product = Product.find(params[:id])
		if @product.update_attributes(params[:product])
			redirect_to category_product_path(@category, @product)
		else
      render :action => 'edit'
    end
	end

	private
	def load_category
		@category = Category.find(params[:category_id])
	end
end