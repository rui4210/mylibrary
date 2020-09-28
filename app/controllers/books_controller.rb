class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.valid?
      @book.save
      return redirect_to root_path
    end
      render 'new'
  end

  private

  def book_params
    params.require(:book).permit(:reading_situation_id, :record_date, :title, :cover, :genre, :author, :publishing, :memo, :impression, :image)
  end

end
