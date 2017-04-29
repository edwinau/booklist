class BooksController < ApplicationController

  def index
    @books = Book.all
  end

  def show
    @books = Book.find(params[:id])
  end

  def new
    @books = Book.new
  end

  def edit
    @books = Book.find(params[:id])
  end

  def create
    @book = book.new(book_params )
      if @book.save
        redirect_to books_url
      else
        render :new
      end
    end
    
end
