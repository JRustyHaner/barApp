class CreateUserProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.string :password
      t.string :address
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :country
      t.boolean :isBusiness

      t.timestamps
    end
  end
end
