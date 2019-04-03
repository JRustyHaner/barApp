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

class Drink < ApplicationRecord
end
