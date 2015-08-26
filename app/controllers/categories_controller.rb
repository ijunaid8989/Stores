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
  def edit
    @findone = Category.find(params[:id])
  end
  def show
    @allcats = Category.all
  end
  def update
    @category = Category.find(params[:id])
    if @category.update_attributes(cat_param)
      redirect_to '/allcategories' , :notice => "updated"
    end
  end
  def destroy
    Category.find(params[:id]).destroy
    redirect_to '/allcategories' , :notice => "Category Deleted"
  end
private
def cat_param
	params.require(:category).permit(:name)
end
end
