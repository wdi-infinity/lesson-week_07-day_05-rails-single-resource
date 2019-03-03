class MoviesController < ApplicationController  # To inherit from the class was created by ruby's team
def index 
@movies = Movie.all
end 
def show 
    @Movie = Movie.find(params[:id])
end 
end 