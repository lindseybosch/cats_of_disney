class Image < ActiveRecord::Base
  belongs_to :user

  def upvote!
    self.update likes: (self.likes +1)
  end
end
