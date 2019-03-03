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
    redirect_to books_path #to see that actully delete it 
end


def new
    #dont need to go to db
end 

def edit
    @book = Book.find(params[:id])

end

def update 
    @book = Book.find(params[:id])
if @book.update(book_params)
    redirect_to books_path
else
    render 'edit'
end
end

def create
    # book.create(params[:book])
    @book = Book.new(book_params) #only copy
    if @book.save 
        redirect_to books_path
    else
        render "new" # the new view 
    end
end

def book_params
 params.require(:book).permit(:title , :author)
end

end