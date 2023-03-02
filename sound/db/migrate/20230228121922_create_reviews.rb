class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :people
      t.string :borrowed_goods
      t.string :usage_fee
      t.text :body

      t.timestamps
    end
  end
end
