class Image < ActiveRecord::Base
  belongs_to :user

  def upvote!
    self.update likes: (self.likes +1)
  end

  has_attached_file :image_img, styles: { image_index: "250x350>", image_show: "325x475>" }
  validates_attachment_content_type :image_img, content_type: /\Aimage\/.*\Z/
end
