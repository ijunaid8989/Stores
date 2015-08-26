class StoreupsController < ApplicationController
  def index
  	@store = Storeup.new
  end
  def create
  	@store = Storeup.new(store_params)
  	if @store.save
  		redirect_to '/storesignup' , :notice => "Your Store has been added Wait a bit for Admins Approval"
  	end
  end

 private
 def store_params
 	params.require(:storeup).permit(:store_name,:licence,:owner_name,:owner_cnic, :email , :password_digest)
 end
end
