class CategoriesController < ApplicationController
  def show
    
  end
  
  def index
    @categories = Category.paginate(page: params[:page], per_page: 5)
  end 
  
  def new
    @category = Category.new
  end 
  
  def create
    @category = Category.new(category_params)
      if @category.save
        flash[:success] = "Category was created succesfully"
        redirect_to categories_path
      else
        render 'new'
      end
      
  end
  
  private
  def category_params
    params.require(:category).permit(:name)
  end
  
end 