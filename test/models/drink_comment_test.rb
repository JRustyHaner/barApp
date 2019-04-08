# == Schema Information
#
# Table name: drink_comments
#
#  id         :integer          not null, primary key
#  comment    :string
#  likeStatus :string
#  reviewDate :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class DrinkCommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
