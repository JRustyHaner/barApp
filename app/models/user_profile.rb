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
    has_many :reviews,
        class_name: 'DrinkComment',
        foreign_key: 'user_profile_id',
        inverse_of: :reviewers,
        dependent: :destroy
    has_many :recipes,
        class_name: 'Recipe',
        foreign_key: 'user_profile_id',
        inverse_of: :drinkers,
        dependent: :destroy    
    validates :name, length: { maximum: 50 }, presence: true
    validates :email, uniqueness: true, format: { with: /([a-zA-Z0-9]+)([\_\.\-{1}])?([a-zA-Z0-9]+)\@([a-zA-Z]+)([\.])([a-zA-Z]+)/, 
    message: "only allows standard email format" }, presence: true
    validates :password, length: { in: 6..20 }, presence: true
    validates :isBusiness, inclusion: { in: [true, false] }
end
