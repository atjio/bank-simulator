class User < ApplicationRecord
	has_one :user_account
	has_many :virtual_accounts
end
