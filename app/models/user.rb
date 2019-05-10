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

	def charge_user(amount) # Not sure about this method, it doesn't return any error but it also doesn't actually charge the user
		begin 
			Xfers.set_api_key(self.xfers_api_key)
			Xfers.set_id_sandbox
			params = self.xfers_charge_query_builder(amount)
			response = Xfers::Charge.create(params)

		rescue Xfers::XfersError => e
  			puts "Exception: " + e.to_s # Let's use this for logging for now
		end 
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


	def xfers_charge_query_builder(amount)
		params = {}
		params[:amount] = amount
		params[:currency] = "IDR"
		params[:notify_url] = "https://mysite.com/payment_notification"
		params[:return_url] = "https://mysite.com/return"
		params[:cancel_url] = "https://mysite.com/cancel"
		params[:order_id] = SecureRandom.hex + Time.now.to_i.to_s # Needs to do this to simulate the order id always new
		params[:shipping] = "2.5"
		params[:tax] = "0.0"
		params[:debit_only] = true
		params[:redirect] = false
		params[:items] = [] # Should be updated in the future
		params[:metadata] = nil

		return params
	end
end
