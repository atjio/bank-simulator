class IndexController < ApplicationController
  def home
  	@balance = current_user.balance || 0
  	@virtual_accounts = current_user.virtual_accounts || []
  end
end
