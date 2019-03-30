# == Schema Information
#
# Table name: drink_pictures
#
#  id         :integer          not null, primary key
#  fileName   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class DrinkPicture < ApplicationRecord
    validates :fileName, 
        length: { in: 3..25, wrong_length: "Filename needs to be between 3 and 25 characters."},
        format: { with: /[A-Za-z0-9]|.|(?:jpg|gif|png)/, 
                  only_letters: "Filename should only have letters, numbers, and have extension of jpg, gif, or png."},
        unique: true
end
