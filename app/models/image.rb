class Image < ActiveRecord::Base
  belongs_to :user
  has_many :upvote_instances, class_name: "Upvote"
  belongs_to :uploader, class_name: "User"
  has_and_belongs_to_many :upvoted_by, class_name: "User"

  def upvotes
    upvote_instances.length
  end

  has_attached_file :image_img, styles: { image_index: "250x350>", image_show: "325x475>" }
  validates_attachment_content_type :image_img, content_type: /\Aimage\/.*\Z/
end
