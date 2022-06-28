class AddUniqueToTask < ActiveRecord::Migration[6.1]
  def change
    change_column :todos, :task, :string, unique: true
  end
end
