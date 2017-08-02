class BooksController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def index
    @books = Book.all
  end

  def show
    @book = Book.includes(:chapters, :sentences).find(params[:id])
  end

  private

    def book_params
      @book
    end
end
