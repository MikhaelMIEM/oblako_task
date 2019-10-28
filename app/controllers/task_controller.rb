class TaskController < ApplicationController
  
  layout false

  def index
    @projects = Project.all
    @todos = Todo.all
    @projects_name_id = {}
    @todo_add = Todo.new

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
