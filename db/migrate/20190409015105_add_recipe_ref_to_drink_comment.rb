class AddRecipeRefToDrinkComment < ActiveRecord::Migration[5.2]
  def change
    add_reference :drink_comments, :recipe, foreign_key: true
  end
end
