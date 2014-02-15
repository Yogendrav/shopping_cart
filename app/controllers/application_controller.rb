class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :categories_displaying

  private

  def categories_displaying
  	@categories = Category.where(parent_id:nil)
  end

  # def after_sign_in_path_for(resource)
  #   debugger
  #   if current_user.role == "admin"
  #     rails_admin.dashboard_path
  #   else
  #     user_path(current_user)
  #   end
  # end

end
