class ChangeDrinkRecipesToRecipes < ActiveRecord::Migration[5.2]
  def change
    rename_table :drink_recipes, :recipes
  end
end
