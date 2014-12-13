class BooksController < ApplicationController
  def index
    @books = Book.includes(:author).order("authors.name").order_by_id
  end

  def with_quantity
    @stocks = Stock.includes(:book).group("books.id", "books.title").order("sum(quantity) desc" ,"books.id").sum("quantity")
  end
end
