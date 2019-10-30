class TaskController < ApplicationController
  
  layout false

  def index
    @projects = Project.includes(:todos)

    @todo_add = Todo.new

    @projects_name_id = {}
    @projects.each do |project|
      @projects_name_id[project.title] = project.id
    end
  end

  def update
  end

  def create
    a = Todo.create({:text => params[:todo_add][:text], :project_id => params[:todo_add][:project_id], :isCompleted => false})
    redirect_to '/'
  end
end
