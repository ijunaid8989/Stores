class CategoriesController < ApplicationController
	before_filter :authorize
  def index
  	@category = Category.new
  end
  def create
  	@category = Category.new(cat_param)
  	if @category.save
  		redirect_to '/addcategory'
  	end
  end

private
def cat_param
	params.require(:category).permit(:name)
end
end
