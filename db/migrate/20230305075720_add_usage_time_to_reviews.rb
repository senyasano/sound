class AddUsageTimeToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :usage_time, :string
  end
end
