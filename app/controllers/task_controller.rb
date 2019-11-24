class TaskController < ApplicationController
  def index
    @category = Category.new
  end
end
