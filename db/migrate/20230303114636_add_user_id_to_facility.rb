class AddUserIdToFacility < ActiveRecord::Migration[5.2]
  def change
    add_column :facilities, :user_id, :integer
  end
end
