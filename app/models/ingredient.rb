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
#  recipe_id      :integer
#
# Indexes
#
#  index_ingredients_on_recipe_id  (recipe_id)
#

class Ingredient < ApplicationRecord
    belongs_to :recipes,
        class_name: 'Recipe',
        foreign_key: 'recipe_id',
        inverse_of: :ingredients,
        optional: true

    validates :amount, numericality: { greater_than: 0 }
    validates :ingredientName,
        presence: true,
        length: { in: 3..30, too_short: "Has to be between 3 and 30 characters."} 
        #format: { with: /[a-zA-Z]/, message: "only allows letters" }
    
    validates :measurement, presence: true, 
        inclusion: { in: %w(teaspoon tablespoon ounce cup pint jigger dash garnish) }

end
