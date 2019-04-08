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
    
    validates :comment, length: { maximum: 100 }
    validates :likeStatus, presence: true
    validates :reviewDate, format: { with: /\d\d\d\d-(0?[1-9]|1[0-2])-(0?[1-9]|[12][0-9]|3[01]) (00|[0-9]|1[0-9]|2[0-3]):([0-9]|[0-5][0-9]):([0-9]|[0-5][0-9])/}
    

end
