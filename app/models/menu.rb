class Menu < ApplicationRecord
  belongs_to :dinner

  with_options presence: true do
    validates :main_name
    validates :main_recipe
    validates :main_genre
    validates :salad_name
    validates :salad_recipe
    validates :salad_genre
    validates :soup_name
    validates :soup_recipe
    validates :soup_genre
  end    

end
