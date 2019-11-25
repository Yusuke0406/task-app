class CategoriesController < ApplicationController
  def index
    @category = Category.new
    @user = current_user
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to category_tasks_path(@category), notice: 'カテゴリーが作成されました'
    else
      flash[:notice] = "失敗しました"
      render root_path(current_user.id)
    end
  end

  private
  def category_params
    params.require(:category).permit(:cat_name).merge(user_id:current_user.id)
  end

end
