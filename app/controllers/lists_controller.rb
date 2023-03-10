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
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    #Listの中でパラメータが[:id]であるレコードを取得
    #さらに、ルーティングで[:id]はURLと紐づけられている
  end

  def edit
  end

  private
  #ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
end
