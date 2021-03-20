class Menu < ApplicationRecord
  belongs_to :dinner

  with_options presence: true do
    validates :main_name
    validates :salad_name
    validates :soup_name
  end    

end
