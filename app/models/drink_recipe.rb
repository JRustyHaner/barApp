# == Schema Information
#
# Table name: drink_recipes
#
#  id          :integer          not null, primary key
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class DrinkRecipe < ApplicationRecord
    validates :description, 
        length: { in: 10..50, wrong_length: "Description needs to be between 10 and 50 characters."},
        format: { with: /[A-Za-z0-9 .,!()]/, 
                  only_letters: "Description should only have letters, numbers, spaces, and punctuation .,!()."},
        unique: true
end
