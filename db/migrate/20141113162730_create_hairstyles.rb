class CreateHairstyles < ActiveRecord::Migration
  def change
    create_table :hairstyles do |t|
      t.string :name
      t.string :price
      t.string :hair_type

      t.timestamps
    end
  end
end
