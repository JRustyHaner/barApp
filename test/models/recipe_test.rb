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

require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
