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
  def edit
  	@product = Product.find(params[:id])
  	@categories = Category.all
  end
  def show
  	@allproducts = Product.all
  end
  def update
  	@product = Product.find(params[:id])
  	if @product.update_attributes(pro_params)
  		redirect_to "/allproducts" , :notice => "Updated"
  	end
  end
  def destroy
  	Product.find(params[:id]).destroy
  	redirect_to "/allproducts" ,:notice => "Deleted Product"
  end

private
def pro_params
	params.require(:product).permit(:name,:short_desc,:long_desc,:category_id)
end
end
