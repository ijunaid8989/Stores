class FrontEndController < ApplicationController
  def index
  end
  def about
  	
  end
  def categroycall
  	@category = Category.find(params[:id])

  	@products = @category.products.all
  end
  def fullpro
  	@product = Product.find(params[:id])
  end
end

