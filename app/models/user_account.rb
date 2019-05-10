class UserAccount < ApplicationRecord
	belongs_to :user
	has_many :transfer
end
