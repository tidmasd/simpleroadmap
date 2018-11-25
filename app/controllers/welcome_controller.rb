class WelcomeController < ApplicationController
	
	skip_before_action :authenticate_user!

	def index	
		@projects = Project.all
	end

	def redirect
	end
end