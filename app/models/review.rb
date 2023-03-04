class Review < ApplicationRecord

  belongs_to :user
  belongs_to :facility

  validates :body,presence: true
  validates :people,presence: true
  validates :usage_fee, presence: true
end
