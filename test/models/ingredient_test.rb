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
    one = ingredients(:one)
    one.measurement = nil
    assert_not one.valid?
  end
  test "IngredientName is present" do
    two = ingredients(:two)
    two.ingredientName = nil
    assert_not two.valid?
  end

end
