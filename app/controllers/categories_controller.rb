class CategoriesController < ApplicationController
  def index
    @category = Category.new
    @user = current_user
  end

  # def new
  #   @category = Category.new
  # end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path
    else
      flash[:notice] = "失敗しました"
      render :index
    end
  end

  private
  def category_params
    params.require(:category).permit(:cat_name).merge(user_id:current_user.id)
  end

end
