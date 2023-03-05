class AddSatisfactionToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :satisfaction, :integer
  end
end
