class StoreinsController < ApplicationController
  def index
  end
  def create
  	store = Storeup.find_by_email(params[:email])

  	@storing = Storeup.find_by_email(params[:email])

  	
  	if store && store.authenticate(params[:password])
  		@approval = @storing.approval
  		if @approval == "A"
  			session[:store_id] = store.id
  			redirect_to root_url , :notice => "Store wala hai bhai"
  		end
  	else
  		redirect_to "/storelogin" , :notice => "Your store isnt approved !"
  	end
  end
  def destroy
  	session[:store_id] = nil
  	redirect_to root_url
  end
end
