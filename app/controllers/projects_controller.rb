class ProjectsController < ApplicationController
    
  def index
    @projects = Project.all

    respond_to do |format|
      format.html
      format.json { render json: @projects }
    end
  end

  def update

    Todo.create(todo_params)

    redirect_to root_path
  end

  def todo_params
    params.require(:project).permit(:text, :project_id)
  end
    
end
