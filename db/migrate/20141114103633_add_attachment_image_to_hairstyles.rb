class AddAttachmentImageToHairstyles < ActiveRecord::Migration
  def self.up
    change_table :hairstyles do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :hairstyles, :image
  end
end
