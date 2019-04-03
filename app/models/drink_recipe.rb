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
    has_many :ingredients
end
