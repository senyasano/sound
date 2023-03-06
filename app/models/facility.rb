class Facility < ApplicationRecord
  attachment :image

  has_many :reviews ,dependent: :destroy
  belongs_to :user

  validates :name,
    presence: true,
    uniqueness: true

  validates :address,
    presence: true,
    uniqueness: true

  validates :url,
    presence: true

  def self.looks(search, word)
    @facility = Facility.where("name LIKE?","%#{word}%")
  end
end
