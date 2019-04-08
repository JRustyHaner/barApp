class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :drinkName
      t.string :description
      t.string :specialDate
      t.string :drinkLocation
      t.datetime :drinkDate
      t.string :fileName
      t.string :drinkType

      t.timestamps
    end
  end
end
