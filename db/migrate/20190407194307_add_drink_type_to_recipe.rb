class AddDrinkTypeToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :drinkType, :string
  end
end
