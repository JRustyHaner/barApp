# == Schema Information
#
# Table name: drink_comments
#
#  id             :integer          not null, primary key
#  comment        :string
#  likeStatus     :string
#  reviewDate     :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  recipe_id      :integer
#  userprofile_id :integer
#
# Indexes
#
#  index_drink_comments_on_recipe_id       (recipe_id)
#  index_drink_comments_on_userprofile_id  (userprofile_id)
#

require 'test_helper'

class DrinkCommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
