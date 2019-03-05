class BooksController < ApplicationController
    def index
        @books = Book.all
    end

    def show
        @book = Book.find(params[:id])
    end
    def new
    end
    def create
        # Book.create(params[:book])
        @book = Book.new(book_params)
        if @book.save
            redirect_to book_path(@book)
        else
            render "new"
        end
    end
    def book_params
        params.require(:book).permit(:title, :author)
    end
    def destroy
        @book = Book.find(params[:id])
        @book.destroy
        redirect_to books_path

    end 
    def edit
         @book = Book.find(params[:id])
    end
    def update
        @book = Book.find(params[:id])
        if @book.update(book_params)
            redirect_to book_path(@book)
        else
            render "edit"
        end
 
    end
end