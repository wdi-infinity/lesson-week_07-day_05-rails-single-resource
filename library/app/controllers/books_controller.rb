class BooksController < ApplicationController
    def index
    
        @books = Book.all
    end

    def show
        @book = Book.find(params[:id])    
    end
    def destroy
       @book = Book.find(params[:id]) 
       @book.destroy  
       redirect_to books_path
    end

    def new
     

    end
    def edit
      @book = Book.find(params[:id]) 
    
    end
    def update
      @book = Book.find(params[:id]) 
      if @book.update(books_params)
        redirect_to books_path
      else
        render 'edit'
      end
    end
    def create
    # Book.createparams[:book] #create new book
      @book = Book.new(books_params) #create new instance but it is not saves into the database (it like a copy)
      if @book.save #save the data into the database
        redirect_to books_path
      else
        render "new"
      end
    end

    def books_params
        params.require(:book).permit(:title, :author)
    end
end