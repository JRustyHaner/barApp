# == Schema Information
#
# Table name: drink_comments
#
#  id             :integer          not null, primary key
#  comment        :string
#  likeStatus     :string
#  reviewDate     :date
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
  test "likeStatus is present" do
    one = drink_comments(:one)
    one.likeStatus = nil
    assert_not one.valid?
  end

  test "reviewDate is should be valid" do
    one = drink_comments(:one)
    assert one.valid?
  end

  test "reviewDate is should be wrong format" do
    one = drink_comments(:one)
    one.reviewDate= '9-1004-03 10005:20001:3001'
    assert_not one.valid?
  end

  test "comment should be valid" do
    one = drink_comments(:one)
    assert one.valid?
  end

  test "comment should be maximum 100" do
    one = drink_comments(:one)
    one.comment = 'Below, the top-level number is the items total point value. If an item is not submitted at all or it is irredeemably broken, 0 points will be awarded for that item. The sub-bullets indicate standard deductions for errors in a submitted item. The deduction list below may not be complete because there may be mistakes that we did not expect. The deduction for an unexpected mistake will be assessed at the time it’s discovered and will reflect how severe the instructor thinks the mistake is Below, the top-level number is the items total point value. If an item is not submitted at all or it is irredeemably broken, 0 points will be awarded for that item. The sub-bullets indicate standard deductions for errors in a submitted item. The deduction list below may not be complete because there may be mistakes that we did not expect. The deduction for an unexpected mistake will be assessed at the time it’s discovered and will reflect how severe the instructor thinks the mistake is'
    assert_not one.valid?
  end
 


end
