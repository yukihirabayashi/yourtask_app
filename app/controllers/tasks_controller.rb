class TasksController < ApplicationController

  def index
     @tasks = Task.all
  end   

  def new
      @task = Task.new
  end
  
  def create
    Task.create(task_params)
    redirect_to new_task_path
  end

  def show
  end

  private
  
  def task_params
    params.require(:task).permit(:name, :status, :content, :image, :request_user_id, :action_user_id, :deadline)
  end
end
