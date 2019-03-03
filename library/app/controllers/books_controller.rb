#  This page is connected to books#index we add to route folder 

# 2* Create a class named booksContoller --> created a bookconroller from routs.rb "books#index" books is the constoler
class BooksController < ApplicationController  # To inherit from the class was created by ruby's team
def index 
  @books = Book.all 
end 
def show 
    @book = Book.find(params[:id]) 
end 
def new # new contoller 

end 
def create  # create contoller 
 # params[:book]  --> 
 @book = Book.new(book_params)   # it will create an instance of the book but not adding it it the data base yet
 if  @book.save # when ready to save to db # if statement == true -> is to make sure the user input is valid and has no milicois stuff
  redirect_to books_path 
 else # if something is wrong we'll redirect then to the form page 
  render action: "new"
  #Attribute --> Author , title 
   end 
 end

def destroy 
  #method to delete a book
      @book = Book.find(params[:id]) 
     if @book.destroy
      redirect_to books_path 
     else
      render "new"
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
    render 'edit'
  end

end 
 def book_params # to make sure the parameters user sends is valid. we created a finc cuz we're gnna use it multiple timez
params.require(:book).permit(:title, :author) # we make sure that user can only type in a book --> title and auth
end 
end 