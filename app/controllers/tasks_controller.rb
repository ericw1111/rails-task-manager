class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  # read
  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      redirect_to tasks_new_path
    end
  end

  def edit
  end

  def update
    if @task.update(task_params)
      redirect_to task_path(@task)
    else
      redirect_to edit_task_path(@task)
    end
  end

  def destroy
    if @task.destroy
      redirect_to tasks_path, status: :see_other
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
