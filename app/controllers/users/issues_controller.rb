class Users::IssuesController < ApplicationController

	def create
		@issue = Issue.new(params[:issue])
		@issue.user = current_user
		if @issue.save
			redirect_to '/users'
		end
	end

	def destroy
		@issue = Issue.find(params[:id])
		@issue.destroy

		respond_to do |format|
			format.html {redirect_to '/users'}
			format.js
		end
	end

	def show
		@issue = Issue.find(params[:id])
		@solutions = Solution.all
		@solution = Solution.new
	end
end
