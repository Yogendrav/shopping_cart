class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :image, :image_file_name, :role
  attr_accessor :image_file_name
  has_attached_file :image, :styles => { :small => "150x150>", :tiny => "100x100", :large => "300X300>" },
  :url => "/assets/products/:id/:style/:basename.:extension",
  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"
  # attr_accessible :title, :body
end
