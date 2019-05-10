class DropVirtualAccountTable < ActiveRecord::Migration[5.2]
  def change
  	drop_table :virtual_accounts
  end
end
