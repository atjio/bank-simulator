class CreateVirtualAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :virtual_accounts do |t|
      t.references :user, foreign_key: true
      t.references :bank, foreign_key: true
      t.string :account_number 
      t.timestamps
    end
  end
end
