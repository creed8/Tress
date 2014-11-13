class AddImageToHairstyles < ActiveRecord::Migration
  
  def self.up
    add_attachment :hairstyles, :image
  end

  def self.down
    remove_attachment :hairstyles, :image
  end

end
