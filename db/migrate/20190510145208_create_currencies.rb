class CreateCurrencies < ActiveRecord::Migration[5.2]
  def change
    create_table :currencies do |t|
      t.string :name
   	  # Should add currency_rate table but it might be unnecessary for now
      t.timestamps
    end
  end
end
