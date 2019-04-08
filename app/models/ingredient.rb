# == Schema Information
#
# Table name: ingredients
#
#  id             :integer          not null, primary key
#  amount         :float
#  ingredientName :string
#  measurement    :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Ingredient < ApplicationRecord
    validates :amount, numericality: { greater_than: 0 }
    validates :ingredientName,
        presence: true,
        length: { in: 3..30, too_short: "Length of Ingredient Name has be between 3 and 30 characters."}, 
        format: { with: /[a-zA-Z]/, message: "only allows letters" }
    
    validates :measurement, presence: true, 
        inclusion: { in: %w(teaspoon tablespoon ounce cup pint jigger dash garnish) }

end
