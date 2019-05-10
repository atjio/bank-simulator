class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username 
      t.string :email # Won't deal with this for now
      t.string :password_salt # Won't deal with this for now
      t.string :password_hash # Won't deal with this for now
      t.timestamps
    end
  end
end
