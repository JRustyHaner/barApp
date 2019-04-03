class CreateDrinkRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :drink_recipes do |t|
      t.string :description

      t.timestamps
    end
  end
end
