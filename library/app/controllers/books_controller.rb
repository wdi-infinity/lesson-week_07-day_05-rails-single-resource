#  This page is connected to books#index we add to route folder 

# 2* Create a class named booksContoller --> created a bookconroller from routs.rb "books#index" books is the constoler
class BooksController < ApplicationController  # To inherit from the class was created by ruby's team
def index 
  @books = Book.all 
end 
def show 
    @book = Book.find(params[:id])
end 
end 