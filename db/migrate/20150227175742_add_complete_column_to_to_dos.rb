class AddCompleteColumnToToDos < ActiveRecord::Migration
  def change
    add_column :to_dos, :complete, :boolean
  end
end
