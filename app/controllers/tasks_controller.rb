class TasksController < ApplicationController
  before_action :set_category
  def index
    @task = Task.new
    @tasks = @category.tasks
    @category = Category.new
  end

  def create
    @task = @category.tasks.new(task_params)
    if @task.save
      redirect_to  category_tasks_path(@category), notice: 'メッセージが送信されました'
    else
      @tasks = @category.tasks
      flash.now[:alert] = "メッセージを入力してください"
      render :index
    end
  end

  private

  def task_params
    params.require(:task).permit(:task_name,:deadline).merge(user_id:current_user.id)
  end

  def set_category
    @category = Category.find(params[:category_id])
  end

end
