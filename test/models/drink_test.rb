# == Schema Information
#
# Table name: drinks
#
#  id            :integer          not null, primary key
#  drinkDate     :datetime
#  drinkLocation :string
#  drinkName     :string
#  specialDate   :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class DrinkTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
