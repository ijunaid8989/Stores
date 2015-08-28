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
  def show
  	@stores = Storeup.where('approval = ?' , 'P')
  end
  def allinall
  	@storeall = Storeup.all
  end
  def approve
  	@approve = Storeup.find(params[:id])
  	@approve.approval = "A"
  	@approve.save!
  	redirect_to '/allstores'
  end
 private
 def store_params
 	params.require(:storeup).permit(:store_name,:licence,:owner_name,:owner_cnic, :email , :password)
 end
end
