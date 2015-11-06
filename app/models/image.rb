class Image < ActiveRecord::Base
  belongs_to :user
  has_many :upvote_instances, class_name: "Upvote", dependent: :destroy
  belongs_to :uploader, class_name: "User"
  has_many :upvoted_by, class_name: "User", through: :upvotes

  def upvotes
    upvote_instances.length
  end

  has_attached_file :link, styles: { index: "250x350>", show: "325x475>" }
  validates_attachment_content_type :link, content_type: /\Aimage\/.*\Z/
end
