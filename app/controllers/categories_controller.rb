# class CategoriesController < ApplicationController
# 	def index
# 		@categories = Category.where(parent_id: nil).paginate(:page => params[:page], :per_page => 2).search(params[:search])
# 	end
# 	def new
# 		@category = Category.new
# 		@categories = Category.where(parent_id: nil)
# 	end
# 	def show
# 		@category = Category.find(params[:id])
# 	end
# 	def edit
# 		@category = Category.find(params[:id])
# 		@categories = Category.where(parent_id: nil)
# 	end
# 	def create
# 		@category = Category.new(params[:category])
# 		@categories = Category.where(parent_id: nil)
# 		if @category.save
# 		  redirect_to category_path(@category)
# 		else
# 		  render :new
# 		end 
# 	end
# 	def update
# 		@category = Category.find(params[:id])
# 		@category.update_attributes(params[:category])
# 		redirect_to category_path(@category)
# 	end
# 	def destroy
# 		@category = Category.find(params[:id])
# 		if @category.delete
# 			redirect_to :action => 'index'
# 		else
# 			render 'index'
# 		end
# 	end
# end
