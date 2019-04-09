class AddUserRefToDrinkComment < ActiveRecord::Migration[5.2]
  def change
    add_reference :drink_comments, :userprofile, foreign_key: true
  end
end
