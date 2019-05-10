class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
  	  t.string :name
  	  t.string :image_url # If this is timeless, should've made this a proper object instead of a single string
      t.integer :price
      t.references :currency, foreign_key: true

      t.timestamps
    end
  end
end
