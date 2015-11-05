class AddAttachmentLinkToImages < ActiveRecord::Migration
  def self.up
    add_attachment :images, :link
  end

  def self.down
    remove_attachment :images, :link
  end
end
