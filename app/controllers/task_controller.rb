class TaskController < ApplicationController
  
  layout false

  def index
    projects = Project.all
    todos = Todo.all
    
    @data = []
    @projects_name_id = {}
    @todo_add = Todo.new

    projects.each do |project|
      project_todo = {}
      @projects_name_id[project.title] = project.id
      project_todo[:title] = project.title
      project_todo[:todos] = []
      todos.each do |todo|
        if todo.project_id == project.id
          project_todo[:todos] << todo.text
        end
      end
      @data << project_todo
    end
  end

  def update
  end

  def create
    a = Todo.create({:text => params[:todo_add][:text], :project_id => params[:todo_add][:project_id], :isCompleted => false})
    redirect_to '/'
  end
end
