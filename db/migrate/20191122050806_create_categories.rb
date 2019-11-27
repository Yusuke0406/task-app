class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :cat_name, null: false,limit:7,unique:true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
