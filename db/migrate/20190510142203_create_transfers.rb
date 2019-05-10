class CreateTransfers < ActiveRecord::Migration[5.2]
  def change
    create_table :transfers do |t|
      t.string :user_account
      t.references :virtual_account, foreign_key: true, index: true
      t.integer :amount
      t.references :currencies
      t.timestamps
    end
  end
end
