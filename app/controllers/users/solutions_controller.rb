class Users::SolutionsController < ApplicationController
  def index
  end

  def create
	@solution = Solution.new(params[:solution])
	@solution.issue_id = params[:issue_id]
	@solution.user = current_user
	if @solution.save
		redirect_to users_issue_path(params[:issue_id])
	end
  end

  def destroy
  	@solution = Solution.find(params[:id])
	@solution.destroy

	respond_to do |format|
		format.html {redirect_to '/users'}
		format.js
	end
  end
end
