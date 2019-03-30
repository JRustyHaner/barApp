class CreateDrinkPictures < ActiveRecord::Migration[5.2]
  def change
    create_table :drink_pictures do |t|
      t.string :fileName

      t.timestamps
    end
  end
end
