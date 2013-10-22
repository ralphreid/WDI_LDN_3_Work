class BookshelvesController < ApplicationController

  def index
    
  end

  def show
    
  end

  def new
    @book = Book.find params[:book_id]
    @bookshelf = @book.bookshelves.new
  end

  def create
    @book = Book.find params[:book_id]
    @bookshelf = @book.bookshelves.new params[:bookshelf]
    if @bookshelf.save
      redirect to @book
  end

  def edit
    
  end

  def update
    
  end

  def destroy

  end

end