class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.float :amount
      t.string :measurement
      t.string :ingredientName

      t.timestamps
    end
  end
end
