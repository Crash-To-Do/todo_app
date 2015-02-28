class ToDosController < ApplicationController

  def index
    @todos= ToDo.all
  end

  def new
    @todo = ToDo.new
  end

  def create
    @todo = ToDo.new(todo_params)
    if @todo.save
      redirect_to to_dos_path
      flash[:notice] = "ToDo created."
    end
  end

  def show
  end

  def edit
  end

  def update
    @todo = ToDo.find(params[:id])
    ToDo.update(@todo.id, complete: params[:complete])
  end

  def destroy
  end

  private

    def todo_params
      params.require(:to_do).permit(:title, :description, :due_at, :order, :category, :id, :complete)
    end
end
