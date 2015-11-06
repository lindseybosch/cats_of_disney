class User < ActiveRecord::Base
  has_many :uploads, class_name: "Image"
  has_many :upvoted, class_name: "Image", through: :upvotes


   has_secure_password
   has_many :images
  validates :email, presence: true, uniqueness: true
end
