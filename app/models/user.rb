class User < ActiveRecord::Base
  has_many :uploads, class_name: "Image"
  has_and_belongs_to_many :upvoted, class_name: "Image"


   has_secure_password
   has_many :images
  validates :email, presence: true, uniqueness: true
end
