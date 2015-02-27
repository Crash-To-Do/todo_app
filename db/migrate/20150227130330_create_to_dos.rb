class CreateToDos < ActiveRecord::Migration
  def change
    create_table :to_dos do |t|
      t.string :title
      t.text :description
      t.string :category
      t.datetime :due_at
      t.integer :order

      t.timestamps null: false
    end
  end
end
