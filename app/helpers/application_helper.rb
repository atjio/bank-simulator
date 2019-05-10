module ApplicationHelper
	def current_user # For simplicity purpose assume the user have logged in
		User.find_by(id: 1) 
	end
end
