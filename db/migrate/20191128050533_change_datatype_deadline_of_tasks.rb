class ChangeDatatypeDeadlineOfTasks < ActiveRecord::Migration[5.0]
  def change
    change_column :tasks, :deadline, :date
  end
end
