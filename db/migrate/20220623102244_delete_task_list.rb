class DeleteTaskList < ActiveRecord::Migration[6.1]
  def change
    remove_column :todos, :task_list
  end
end
