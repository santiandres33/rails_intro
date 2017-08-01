class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.includes(:chapters, :sentences).find(params[:id])
  end
end
