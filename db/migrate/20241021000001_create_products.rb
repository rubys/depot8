class CreateProducts < ActiveRecord::Migration[8.0]
#START:up
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
#START_HIGHLIGHT
      t.decimal :price, precision: 8, scale: 2
#END_HIGHLIGHT

      t.timestamps
    end
  end
#END:up
end
