class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render json: @tasks
  end

  def create
  end

  def update
  end

  def destroy
  end
end
