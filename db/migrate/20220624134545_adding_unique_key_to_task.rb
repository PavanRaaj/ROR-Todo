class AddingUniqueKeyToTask < ActiveRecord::Migration[6.1]
  def change
    add_index :todos, :task, unique: true
  end
end
