class AddFacilityIdToReview < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :facility_id, :integer
  end
end
