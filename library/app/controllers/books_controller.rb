class BooksController < ApplicationController
  def index 
   @books=Book.all
  end

  def show
    @book = Book.find(params[:id]) 
  end

  # I do not need any data from db
  def new
  end

 def edit
  @book=Book.find(params[:id])
 end

 def update
  @book=Book.find(params[:id])# fetch book
  if @book.update(book_params)
    redirect_to books_path
  else
    render "edit"
  end
 end

  # I need to add data into db
  def create
    # params[:book] --> inspect the html file then you can see the name as name=book[title] and name=book[author]
    # Book.create(params[:book]) # create and save it in db
    @book=Book.new(book_params)# create instant or copy 
    # it take book_params method to checked
    
    # save it to database
    if @book.save 
      redirect_to books_path # go to books path
    else
      render action: "new" # back to the action new
    end
  end

  def book_params
    params.require(:book).permit(:title, :author)# requir check if the user send title and author
  end

  def destroy
    @book=Book.find(params[:id])
    if @book.destroy
    redirect_to books_path
    else
      render "new"
    end
  end

end