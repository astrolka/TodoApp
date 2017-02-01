class TodosController < ApplicationController

    def create
      Todo.create(todo_params)

      redirect_to root_path
    end

    def todo_params
      params.require(:todo).permit(:text, :project_id)
    end
    
end
