class AddForeignKeyToToDo < ActiveRecord::Migration
  def change
    add_column :to_dos, :user_id, :integer
  end
end
