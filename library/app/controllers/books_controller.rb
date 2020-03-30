class BooksController<ApplicationController
    def index 
       @books= Book.all
    end 
    def show 
        @book = Book.find(params[:id])
    end 
    def new
    end 
    def create
        # Books.create(params[:book])
        @book=Book.new(params[book_params])
        if @book.save
            redirect_to books_path 
        else 
            render action: "new"
        end 

    end 
    def book_params
        #this def make sure we only get the input we want only title and author with key :book only
        params.require(:book).permit(:title , :author)
    end 


end
