class DrinkPicture < ApplicationRecord
    validates :fileName, length: { in: 3..25, wrong_length: "Filename needs to be between 3 and 25 characters."}, format: { with: /[A-Za-z0-9]/, only_letters: "Filename should only have letters."}, unique:
end
