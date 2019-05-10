class Transfer < ApplicationRecord
	belongs_to :user_account
	belongs_to :virtual_account
	has_one :currency
end
