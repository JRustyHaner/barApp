class ChangeReviewDateToBoDateInDrinkComments < ActiveRecord::Migration[5.2]
  def change
    change_column :drink_comments, :reviewDate, :date
  end
end
