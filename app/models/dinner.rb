class Dinner < ApplicationRecord
  # belongs_to :menu
  has_one_attached :image

  validates :impression, presence: true
end
