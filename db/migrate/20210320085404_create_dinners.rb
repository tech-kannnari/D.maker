class CreateDinners < ActiveRecord::Migration[6.0]
  def change
    create_table :dinners do |t|

      t.date :cookeday,   null: false
      t.text :impression
      t.time :cooktime,   null: false
      t.references :menu, null: false, foreign_key:true
      t.timestamps
    end
  end
end
