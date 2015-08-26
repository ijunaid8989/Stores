class AdminsController < ApplicationController
  def index
  	@admin = Admin.new
  end
  def create
  	@admin = Admin.new(admin_params)
  	if @admin.save
  		redirect_to root_url , :notice => "IN"
  	end
  end
private
def admin_params
	params.require(:admin).permit(:username, :password)
end
end
