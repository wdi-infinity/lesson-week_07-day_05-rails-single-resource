class BooksController < ApplicationController
    def index
        @books =  Book.all
    end

    def show
         @book = Book.find(params[:id])
    end

    def new

    end

    def create 
        @book = Book.new(book_params)
            if @book.save #save the data in the database
                redirect_to books_path #direct the user to the books list page 
            else 
                render action: "new" #stay in the same page 
    end
end

    def edit 
        @book = Book.find(params[:id])
    end

    def update 
        @book = Book.find(params[:id])
        if @book.update(book_params)
            redirect_to books_path
        else
            render action:'edit'
        end
    end

    def destroy
        @book = Book.find(params[:id])
        @book.destroy
        redirect_to books_path
    end

    def book_params
        params.require(:book).permit(:title, :author)
    end

end
