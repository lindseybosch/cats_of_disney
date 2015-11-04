class AddAttachmentImageImgToImages < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      t.attachment :image_img
    end
  end

  def self.down
    remove_attachment :images, :image_img
  end
end
