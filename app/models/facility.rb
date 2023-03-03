class Facility < ApplicationRecord
  attachment :image

  has_many :reviews ,dependent: :destroy
  belongs_to :user
end
