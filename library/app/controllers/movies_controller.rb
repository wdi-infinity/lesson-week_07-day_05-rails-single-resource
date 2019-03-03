class MoviesController < ApplicationController
    def index
        @movies = Movie.all
    end

    def show
       @movie = Movie.find(params[:id]) 
    end
    def new
    end
    def create
        # Book.create(params[:book])
        @movie = Movie.new(movie_params)
        if @movie.save
            redirect_to movie_path(@movie)
        else
            render "new"
        end
    end
    def movie_params
        params.require(:movie).permit(:title, :director, :rating)
    end
    def destroy
         @movie = Movie.find(params[:id]) 
         @movie.destroy
         redirect_to movies_path
  
    end
    def edit
         @movie = Movie.find(params[:id]) 
    end
    def update
        @movie = Movie.find(params[:id]) 
        if @movie.update(movie_params)
            redirect_to movie_path(@movie)
        else
            render "edit"
        end

    end
end