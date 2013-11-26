class TasksController < ApplicationController
  def index
    respond_to do |format|
      format.html { render nothing: true, layout: true }
      format.json { render json: {tasks: Task.all }}
    end
  end

  def create
    task = Task.create params[:task]
    render json: {task: task}
  end

  def update
    task = Task.find params[:id]
    task.update_attributes(params[:task])
    render json: {task: task}
  end

  def destroy
    task = Task.find params[:id]
    task.delete
    render nothing: true
  end
end 