class VirtualAccount < ApplicationRecord
	belongs_to :user
	belongs_to :bank
	has_many :transfers
end
