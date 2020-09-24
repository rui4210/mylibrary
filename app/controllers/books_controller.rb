class BooksController < ApplicationController
  def index
  end

  def new
    @book = Book.new
  end

  private

  def book_params
    params.require(:book).permit(:title, :cover, :image)
  end

end
