class ToDosController < ApplicationController
  before_action :authenticate_user!

  def index
    # @todos= ToDo.rank(:position).all
    @todos= ToDo.search(params[:search]).rank(:position).where(user_id: current_user.id).all
  end

  def new
    @todo = ToDo.new
  end

  def create
    @todo = ToDo.new(todo_params)
    @todo.position = ToDo.set_position
    @todo.save
    redirect_to to_dos_path
    flash[:notice] = "ToDo created."
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

  def completed
    @todos=ToDo.all
  end

  def destroy
  end

  private

    def todo_params
      params.require(:to_do).permit(:title, :description, :due_at, :position, :category, :id, :complete, :search, :user_id)
    end
end
