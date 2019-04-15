# == Schema Information
#
# Table name: recipes
#
#  id                 :integer          not null, primary key
#  description        :string
#  drinkDate          :date
#  drinkLocation      :string
#  drinkName          :string
#  drinkType          :string
#  image_content_type :string
#  image_file_name    :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  specialDate        :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  userprofile_id     :integer
#
# Indexes
#
#  index_recipes_on_userprofile_id  (userprofile_id)
#

class Recipe < ApplicationRecord
        has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
        validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/  
        has_many :ingredients,
                        class_name: 'Ingredient',
                        foreign_key: 'recipe_id',
                        inverse_of: :recipes,
                        dependent: :destroy
        has_many :reviews,
                class_name: 'DrinkComment',
                foreign_key: 'recipe_id',
                inverse_of: :recipes,
                dependent: :destroy
        belongs_to :drinkers,
                        class_name: 'UserProfile',
                        foreign_key: 'userprofile_id',
                        inverse_of: :drinks,
                        optional: true

        validates :drinkName, 
                uniqueness: true,
                length: { in: 5..25, wrong_length: "Drink Name needs to be between 5 and 25 characters."},
                format: { with: /[A-Za-z0-9 ]/, 
                only_letters_numbers: "Description should only have letters, numbers, and spaces."},
                presence: true
        validates :description,
                length: { in: 5..500, wrong_length: "Description needs to be between 5 and 500 characters."},
                format: { with: /[A-Za-z0-9 ,\-\.:;'()]/, 
                only_letters_numbers: "Description should only have letters, numbers, -,.:;() and spaces."},
                presence: true            
        validates :drinkDate, presence: true
        validates :drinkLocation, format: { with: /[A-Za-z][A-Za-z][A-Za-z]/, 
                only_letters: "Location should only have three letters."}
        validates :specialDate, format: { with: /[A-Za-z0-9 ]/, only_letters: "Special Date should only have letters, numbers, and spaces." }
        validates_attachment :image, content_type: ["image/jpeg", "image/gif", "image/png"]

end
