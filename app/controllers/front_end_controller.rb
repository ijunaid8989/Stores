class FrontEndController < ApplicationController
  def index
  end
  def about
  	
  end
  def categroycall
  	@category = Category.find(params[:id])

  	@products = @categroy.products.all
  end
end
