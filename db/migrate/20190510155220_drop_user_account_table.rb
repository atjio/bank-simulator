class DropUserAccountTable < ActiveRecord::Migration[5.2]
  def change
  	drop_table :user_accounts
  end
end
