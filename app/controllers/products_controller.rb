class ProductsController < ApplicationController

	def index
		@products = Product.paginate(:per_page => 8, :page => params[:page]).search(params[:search])
		respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
      format.js
    end
	end

	def new
		@product = Product.new
	end

	def show
		@product = Product.find(params[:id])
	end

	def edit
		@product = Product.find(params[:id])
	end

	def create
		@product = Product.new(params[:product])
		if @product.save
			redirect_to product_path(@product)
		else
			render 'new'
		end
	end

	def update
		@product = Product.find(params[:id])
		if @product.update_attributes(:product)
			redirect_to product_path(@product)
		else
			render 'index'
		end
	end
	
	def destroy
		@product = Product.find(params[:id])
		if @product.delete
			redirect_to products_path
		else
			render 'index'
		end
	end
	
end
