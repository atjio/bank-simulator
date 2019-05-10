class DropBankTable < ActiveRecord::Migration[5.2]
  def change
  	drop_table :banks
  end
end
