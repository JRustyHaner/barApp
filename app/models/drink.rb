# == Schema Information
#
# Table name: drinks
#
#  id            :integer          not null, primary key
#  drinkDate     :datetime
#  drinkLocation :string
#  drinkName     :string
#  specialDate   :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Drink < ApplicationRecord
    validates :drinkName, 
            uniqueness: true,
            length: { in: 5..25, wrong_length: "Description needs to be between 5 and 25 characters."},
            format: { with: /[A-Za-z0-9 ]/, 
            only_letters_numbers: "Description should only have letters, numbers, and spaces."},
            presence: true
    validates :drinkDate, presence: true
    validates :drinkLocation, format: { with: /[A-Z][A-Z][A-Z]|[a-z][a-z][a-z]/, 
            only_letters: "Location should only have three letters."}
    validates :specialDate, format: { with: /[A-Za-z]/, only_letters: "Special Date should only have letters" }
     
end
