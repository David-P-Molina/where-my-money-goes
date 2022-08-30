class CreateBudgets < ActiveRecord::Migration[6.1]
  def change
    create_table :budgets do |t|
      t.string :name
      t.string :description
      t.float :starting_amount
      t.float :ending_amount
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
