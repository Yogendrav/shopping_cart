class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :categories_displaying
  #before_filter :products_displaying

  private

  def categories_displaying
  	@categories = Category.where(parent_id:nil)
  end
  # def products_displaying
  # 	@products = Product.where(parent_id:nil)
  # end

end
