class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :task_name,null: false,unique:true
      t.references :user, foreign_key: true
      t.references :category, foreign_key: true
      t.timestamps
    end
  end
end
