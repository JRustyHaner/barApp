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
#  state      :string
#  zipcode    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserProfile < ApplicationRecord
end
