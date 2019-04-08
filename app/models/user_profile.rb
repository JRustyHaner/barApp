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
#  role       :string
#  state      :string
#  zipcode    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class UserProfile < ApplicationRecord
    validates :name, length: { maximum: 50 }, presence: true
    validates :email, uniqueness: true, format: { with: /([a-zA-Z0-9]+)([\_\.\-{1}])?([a-zA-Z0-9]+)\@([a-zA-Z]+)([\.])([a-zA-Z]+)/, 
    message: "only allows standard email format" }, presence: true
    validates :password, length: { in: 6..20 }, presence: true
    validates :isBusiness, inclusion: { in: [true, false] }
end
