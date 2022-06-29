class TodosController < ApplicationController
  def todo_app

    @todo_list = Todo.all

    # @new_task = Todo.new

  end

  def new
    todo =Todo.new
  end

  # def listing
  #   render plain: Todo.order(:id).map{|todo| todo.to_pleasant_string}.join("\n")
  # end

  def delete 
   @del = Todo.find(params[:id])
   if @del.destroy
    @todo_list=Todo.all
    redirect_to lists_path 
   end
  end

  def list
    @todo_list = Todo.all
  end

  def create
    todo = Todo.new( todo_params )
    if  todo.save
    @todo_list = Todo.all
    redirect_to lists_path 
    end
  end

  def update
    id = params[:id]
    todo=Todo.find(id)
    todo.status = true 
    if todo.save
    @todo_list = Todo.all
    redirect_to lists_path 
    end
  end

 private 

 def todo_params
  params.require(:todo).permit(:task, :date, :status)
 end

end
