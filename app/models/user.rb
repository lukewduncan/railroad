class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #### 
  # EXAMPLE PAPERCLIP/S3 UPLOAD
  # has_attached_file :avatar,
  #   :storage => :s3,
  #   :bucket => Rails.env.production? ? 'railroad' : 'railroad-dev',
  #   :path => 'user/avatar/:id/:filename',
  #   :styles => { :medium => "300x300>", :thumb => "100x100#" },
  #   :default_url => "https://www.kindpng.com/picc/m/495-4952535_create-digital-profile-icon-blue-user-profile-icon.png"
end
