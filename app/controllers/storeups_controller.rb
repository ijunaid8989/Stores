class StoreupsController < ApplicationController
  def index
  	@store = Storeup.new
  end
  def create
  	@store = Storeup.new(store_params)
  	if @store.save
  		redirect_to 
  	end
  end

 private
 def store_params
 	params.require(:Storeup).permit(:store_name,:licence,:owner_name,:owner_cnic)
 end
end
