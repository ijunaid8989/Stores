class ProductsController < ApplicationController
  def index
  	@product = Product.new
  	@categories = Category.all
  end
  def create
  	@product = Product.new(pro_params)

  	if @product.save
  		redirect_to "/addproduct" , :notice => "Product has been added!!"
  	end
  end

private
def pro_params
	params.require(:product).permit(:name,:short_desc,:long_desc,:category_id)
end
end
