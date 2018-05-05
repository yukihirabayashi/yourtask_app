class TasksController < ApplicationController
before_action :authenticate_user!

  def index
    @tasks = Task.all
    @users = User.all
  end
     

  def new
     @task = Task.new
     @users = User.all
     @tasks = Task.all
    @request_user_id = current_user 

  end
  
  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    @task = Task.find(params[:id])
      if
        @task.update(task_params)
        redirect_to tasks_path, notice:"タスクを編集しました！"
      else
        render 'edit'
      end
  end

  
  def create
    @task = Task.new(task_params)
    @task.request_user_id = current_user.id
      if @task.request_user_id == 1
         @task.action_user_id = 2
      else
        @task.action_user_id = 1
      end
    @task.user_id = current_user.id
    
    if @task.save
      redirect_to tasks_path, notice: "タスクを作成しました！"
       ContactMailer.contact_mail(@task).deliver
      else
      redirect_to new_task_path
    end
  end
  
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, notice:"タスクを完了しました！"
  end
  private
  
  def task_params
    params.require(:task).permit(:name, :status, :content, :image, :image_cache, :request_user_id, :action_user_id, :deadline)
  end
end