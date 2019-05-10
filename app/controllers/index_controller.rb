class IndexController < ApplicationController
  def home
  	@virtual_accounts = current_user.virtual_accounts || []
  end
end
