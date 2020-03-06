class TasksController < ApplicationController
before_action :authenticate_user!
  def new
    @categories = Category.all
  end


  def create
    @task = Task.new(task_params)
    @category = Category.find(category_params)
    @task.category = @category
    respond_to do |format|
      if @task.save
        flash.now[:notice] = "Task created"
        format.js { }
      else
        flash[:notice] = "Please try again"
        format.html {redirect_to root_path}
      end
    end
  end


  def edit
    @task = Task.find(params[:id])
    @categories = Category.all
  end

  def update
    @task = Task.find(params[:id])
    puts "&" * 50
      puts(params)
      puts(task_params.empty?)
      if task_params.empty?
        @task.update(status: params[:task_status])
        # respond_to do |format|
        #   # format.js {}
        # end
      else
        @task.update(task_params)
        redirect_to tasks_path
      end
    flash[:notice] = "Task edited"
  end

  def index
    @tasks = Task.all
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    respond_to do |format|
      format.js { }
    end
  end


  private

  def task_params
    params.permit(:title, :deadline, :description)
  end

  def category_params
    params.require(:Category)
  end

end
