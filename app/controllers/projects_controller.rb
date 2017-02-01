class ProjectsController < ApplicationController
    
  def index
    @projects = Project.all

    respond_to do |format|
      format.html
      format.json { render json: @projects,
                      :include => :todos }
    end
  end
    
end
