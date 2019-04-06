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

require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Measurement is present" do
    one = ingredients(one)
    asset true
  end
  test "IngredientName is present" do
    two = ingredients(two)
    asset true
  end

end
