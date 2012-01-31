class TasksController < ApplicationController
  def index
    @all_tasks = Task.all
    @one_array = []
		@two_array = []
		@three_array = []
		@four_array = []
		@all_tasks.each do |t|
			if t.priority == 1
				@one_array << t
			elsif t.priority == 2
				@two_array << t
			elsif t.priority == 3
				@three_array << t
			elsif t.priority == 4
				@four_array << t
			else
        print "Prioritize your tasks properly!"
			end
		end
    @task = Task.new
  end
  
  def show
    @t = Task.find params[:id]
  end
  
  def edit
    @task = Task.find params[:id]
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
