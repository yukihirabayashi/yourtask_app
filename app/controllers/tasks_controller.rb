class TasksController < ApplicationController

  def index
     @tasks = Task.all
     @t = Task.where(action_user_id:current_user.id)
  end   

  def new
     @task = Task.new
  end
  
  def edit
    @task = Task.find(params[:id])
  end
  
  def update
    @task = Task.find(params[:id])
      if@task.update(task_params)
        redirect_to tasks_path, notice:"タスクを編集しました！"
      else
        render 'edit'
      end
  end

  
  def create
    @task = Task.new(task_params)
    @task.request_user_id = current_user.id
    @task.user_id = current_user.id
    @task.save
    redirect_to tasks_path,  notice: "タスクを作成しました！"
  end
  
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, notice:"タスクを完了しました！"
  end
  private
  
  def task_params
    params.require(:task).permit(:name, :status, :content, :image, :request_user_id, :action_user_id, :deadline)
  end
end
