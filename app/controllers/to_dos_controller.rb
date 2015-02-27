class ToDosController < ApplicationController
  def index
  end

  def new
    @todo = ToDo.new
    @set_order = set_order_number
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
  end

  def destroy
  end

  private

    def todo_params
      params.require(:to_do).permit(:title, :description, :due_at, :order, :category, :id)
    end
end
