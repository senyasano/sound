class Facility < ApplicationRecord
  attachment :image
  
  has_many :reviews ,dependent: :destroy
  belong_to :user
end
