class BooksController < ApplicationController
  before_action :check_data_book

  def show; end

  def check_data_book
    @book = Book.find_by id: params[:id]
    if @book.nil?
      redirect_to root_path
      flash[:success] = "Khoong tim thay trang 404"
    else
      @book
    end
  end
end
