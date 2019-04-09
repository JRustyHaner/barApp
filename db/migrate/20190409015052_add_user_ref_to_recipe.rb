class AddUserRefToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_reference :recipes, :userprofile, foreign_key: true
  end
end
