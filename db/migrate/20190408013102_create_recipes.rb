class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.datetime :drinkDate
      t.string :drinkLocation
      t.string :drinkName
      t.string :specialDate
      t.string :drinkType

      t.timestamps
    end
  end
end
