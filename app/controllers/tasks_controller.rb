class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render json: @tasks
  end

  def create
    task = Task.create(content: params[:content], user_id: 1)
    render json: task
  end

  def update
  end

  def update_all
    tasks = params[:tasks]
    tasks.each do |task|
      t = Task.find(task['id'])
      t.order = task['order']
      t.save
    end
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
    tasks = Task.all
    render json: tasks
  end
end
