class TasksController < ApplicationController
  def index
    @all_priorities = Priority.all
    @task = Task.new
    @show_flag = false
  end
  
  def show
    @task = Task.new
    @show_task = Task.find params[:id]
    @show_flag = true
  end
  
  def edit
    @task = Task.find params[:id]
    @show_flag = false
  end
  
  def create
    Task.create params[:task]
    redirect_to tasks_url
  end

  def update
    @task = Task.find params[:id]
    @task.update_attributes params[:task]
    redirect_to tasks_url
  end
  
  def destroy
    @task = Task.find params[:id]
    @task.destroy
    redirect_to tasks_url
  end

end
