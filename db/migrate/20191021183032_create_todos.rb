class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.text :text
      t.boolean :isCompleted
      t.integer :project_id

      t.timestamps
    end
  end
end
