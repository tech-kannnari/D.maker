class CreateDinners < ActiveRecord::Migration[6.0]
  def change
    create_table :dinners do |t|

      t.text :impression
      t.references :menu, foreign_key:true
      t.timestamps
    end
  end
end
