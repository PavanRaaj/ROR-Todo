class RemovingIndexUniqueToTask < ActiveRecord::Migration[6.1]
  def change
    remove_index :todos, :task, unique: false
  end
end
