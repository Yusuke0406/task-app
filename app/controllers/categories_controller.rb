class CategoriesController < ApplicationController
  def index
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories,notice:"カテゴリー作成しました"
    else
      render :new
  end

  private
  def category_params
    params.require(:category).permit(:cat_name)
  end

end
