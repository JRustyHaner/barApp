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

class DrinkComment < ApplicationRecord
end
