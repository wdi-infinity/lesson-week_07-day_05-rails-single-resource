class MoviesController < ApplicationController
    def index
       @movies = Movie.all
    end

    def show 
        @movie = Movie.find(params[:id])
    end

    def destroy
        @movie = Movie.find(params[:id])
        @movie.destroy
        redirect_to movies_path
    end



    def new
    end

    def edit
        @movie = Movie.find(params[:id])
    
        end
    
        def update
        @movie = Movie.find(params[:id])
        if @movie.update(movie_params)
         redirect_to movies_path
        else
          render "edit"
        end
    end

    def create 
    #    Book.create(params[:book]) 
          @movie = Movie.new(movie_params) 
        #   if data saved succefully show data
       if @movie.save    
        redirect_to movies_path
      else
        #   if data not saved succefully still at ther same page
        render "new"
    end
end

def movie_params
    params.require(:movie).permit(:director, :title ,:rating)
end
end