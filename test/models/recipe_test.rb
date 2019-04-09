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

require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
