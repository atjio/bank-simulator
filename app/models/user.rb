class User < ApplicationRecord
	require 'xfers'

	has_one :user_account
	has_many :virtual_accounts

	def balance 
		user = self.xfers_user
		return user[:available_balance] if !user.nil?
	end

	def virtual_accounts
		user = self.xfers_user
		return user[:bank_accounts] if !user.nil?
	end

	def xfers_user
		begin 
			Xfers.set_api_key(self.xfers_api_key)
			Xfers.set_id_sandbox
			return Xfers::User.retrieve
		rescue Xfers::XfersError => e
  			puts "Exception: " + e.to_s # Let's use this for logging for now
		end 
	end
end
