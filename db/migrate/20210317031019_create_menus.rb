class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|

      t.string     :main_name,    null:false
      t.text       :main_recipe,  null:false  
      t.string     :main_genre,   null:false 
      t.string     :salad_name,   null:false  
      t.text       :salad_recipe, null:false   
      t.string     :salad_genre,  null:false  
      t.string     :soup_name,    null:false
      t.text       :soup_recipe,  null:false   
      t.string     :soup_genre ,  null:false

      t.timestamps
    end
  end
end
