class Admin::CategoriesController < ApplicationController
  #Actions index, new, create
  def index
    @categories = Category.all
    @count = Product.group(:category_id).count
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

end
