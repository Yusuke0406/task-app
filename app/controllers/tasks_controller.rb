class TasksController < ApplicationController
  before_action :set_category
  def index
    @task = Task.new
    @tasks = @category.tasks.order(deadline: :asc)
    @category1 = Category.find(params[:category_id])
    @category = Category.new
  end

  def create
    @task = @category.tasks.new(task_params)
    if @task.save
      # flash[:notice] = 'タスクが追加されました'
      respond_to do |format|
        format.html {redirect_to  category_tasks_path(@category), notice: 'タスクが追加されました'}
        format.json
      end
    else
      @tasks = @category.tasks
      flash.now[:alert] = "メッセージを入力してください"
      render :index
    end
  end

  def destroy
    @task=Task.find(params[:id])
    @task.destroy
    redirect_to  category_tasks_path(@category), notice: 'タスクが削除されました'
  end

  private

  def task_params
    params.require(:task).permit(:task_name,:deadline).merge(user_id:current_user.id)
  end

  def set_category
    @category = Category.find(params[:category_id])
  end

end
