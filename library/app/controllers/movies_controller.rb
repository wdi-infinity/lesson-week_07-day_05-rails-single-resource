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

        @movie = Movie.new(movies_params) #create new instance but it is not saves into the database (it like a copy)
      if @movie.save #save the data into the database
        redirect_to movies_path
      else
        render "new"
      end
    end

    def movies_params
        params.require(:movie).permit(:director, :title, :rating)
    end
end