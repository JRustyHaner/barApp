class ChangeDrinkDrinkToBeDateInRecipes < ActiveRecord::Migration[5.2]
  def change
    change_column :recipes, :drinkDate, :date
  end
end
