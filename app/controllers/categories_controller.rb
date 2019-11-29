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
      render :index
    end
  end

  def edit
    @category = Category.find_by(id:params[:id])
  end
  
  def update
    @category = Category.find_by(id:params[:id])
    if @category.update(category_params)
      redirect_to category_tasks_path(@category),notice: 'カテゴリーが編集されました'
    else
      render :edit
    end
  end

  def destroy
    @category=Category.find_by(params[:id])
    @category.destroy
    render :index
  end

  private
  def category_params
    params.require(:category).permit(:cat_name).merge(user_id:current_user.id)
  end

end
