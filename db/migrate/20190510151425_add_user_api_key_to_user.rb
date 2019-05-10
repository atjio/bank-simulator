class AddUserApiKeyToUser < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :xfers_api_key, :string
  end
end
