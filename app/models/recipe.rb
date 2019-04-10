# == Schema Information
#
# Table name: recipes
#
#  id             :integer          not null, primary key
#  description    :string
#  drinkDate      :datetime
#  drinkLocation  :string
#  drinkName      :string
#  drinkType      :string
#  fileName       :string
#  specialDate    :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  userprofile_id :integer
#
# Indexes
#
#  index_recipes_on_userprofile_id  (userprofile_id)
#

class Recipe < ApplicationRecord
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
    validates :fileName, format: { with: /[A-Za-z0-9]/, allow_blank: true, only_letters: "Special Date should only have letters and numbers." }

end
