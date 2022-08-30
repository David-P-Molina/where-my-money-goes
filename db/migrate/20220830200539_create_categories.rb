class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :type
      t.text :description
      t.references :budget, null: false, foreign_key: true

      t.timestamps
    end
  end
end
