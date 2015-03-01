class ToDosController < ApplicationController

  def index
    # @todos= ToDo.rank(:position).all
    @todos= ToDo.search(params[:search]).rank(:position).all
  end

  def new
    @todo = ToDo.new
  end

  def create
    @todo = ToDo.new(todo_params)
    @todo.position = ToDo.set_position
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
    @todo = ToDo.find_by_id(params[:id])
    ToDo.update(@todo.id, complete: params[:complete])
  end

  def update_position
    @todo = ToDo.find_by_id(params[:id])
    ToDo.update(@todo.id, position: params[:position])
    render nothing: true
  end

  def destroy
  end

  private

    def todo_params
      params.require(:to_do).permit(:title, :description, :due_at, :position, :category, :id, :complete, :search)
    end
end
