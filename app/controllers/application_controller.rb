class ApplicationController < ActionController::API

	def find_developer
		head 404 unless Developer.exists?(params[:dev_id])
		@dev = Developer.find(params[:dev_id])
	end
end
