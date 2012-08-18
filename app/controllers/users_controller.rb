class UsersController < ApplicationController
	before_filter :authenticate_user! , :except => :show
	def index
		@issues = current_user.issues.all
		@issue = Issue.new
		@solution = Solution.new
	end

	def show
		@user = User.find_by_username(params[:username])
		@issues = Issue.find_all_by_user_id(@user)
	end
end
