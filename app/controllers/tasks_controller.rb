class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render json: @tasks
  end

  def create
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
  end
end
