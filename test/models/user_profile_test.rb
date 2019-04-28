# == Schema Information
#
# Table name: user_profiles
#
#  id         :integer          not null, primary key
#  address    :string
#  city       :string
#  country    :string
#  email      :string
#  isBusiness :boolean
#  mobile     :string
#  name       :string
#  password   :string
#  role       :string           default("user")
#  state      :string
#  zipcode    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class UserProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "UserProfile Object is Valid" do
    one = user_profiles(:one)
    assert one.valid?
  end

  test "Name must be maximum of 50 characters length" do
    one = user_profiles(:one)
    one.name = 'This name is of very very very very very very very very very very long length'
    assert_not one.valid?
  end

  test "Name must be present" do
    one = user_profiles(:one)
    one.name = nil
    assert_not one.valid?
  end
  
  test "email must be a valid format" do
    one = user_profiles(:one)
    one.email = 'dean_taylor890@hi_12.org'
    assert_not one.valid?
  end

  test "email must be present" do
    one = user_profiles(:one)
    one.email = nil
    assert_not one.valid?
  end

  test "password validation" do
    two = user_profiles(:two)
    two.password = 'nnnkl0i9nkmkmlkmk9877gyhg'
    assert_not two.valid?
  end
  
  test "password must be provided" do
    two = user_profiles(:two)
    two.password = nil
    assert_not two.valid?
  end
  
  test "isBusiness must have a value" do
    two = user_profiles(:two)
    two.isBusiness = nil
    assert_not two.valid?
  end

end
