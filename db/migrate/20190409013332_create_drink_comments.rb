class CreateDrinkComments < ActiveRecord::Migration[5.2]
  def change
    create_table :drink_comments do |t|
      t.string :likeStatus
      t.string :comment
      t.datetime :reviewDate

      t.timestamps
    end
  end
end
