class AddPositionToTodoItem < ActiveRecord::Migration
  def change
    add_column :to_dos, :position, :integer
    remove_column :to_dos, :order
  end
end
