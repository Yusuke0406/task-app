class AddDeadlineToTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :deadline, :integer
  end
end
