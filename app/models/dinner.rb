class Dinner < ApplicationRecord
  # belongs_to :menu

  has_one_attached :image

  with_options presence: true do
    validates :impression
    validates :image
    validates :cookday
  end    
end
