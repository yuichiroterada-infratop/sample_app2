class ListsController < ApplicationController
  def new
    @list = List.new
  end

  def create
    list = List.new
    list.save
    redirect_to "/top"
  end

  def index
  end

  def show
  end

  def edit
  end

  private
  #ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
