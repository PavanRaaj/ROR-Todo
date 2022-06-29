class RemovingUniqueToTask < ActiveRecord::Migration[6.1]
  def change
    change_column :todos, :task, :string, unique: false
  end
end
