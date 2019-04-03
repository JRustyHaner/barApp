class CreateDrinks < ActiveRecord::Migration[5.2]
  def change
    create_table :drinks do |t|
      t.string :drinkName
      t.string :specialDate
      t.string :drinkLocation
      t.datetime :drinkDate

      t.timestamps
    end
  end
end
