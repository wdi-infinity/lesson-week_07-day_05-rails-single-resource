class MoviesController < ApplicationController
    def index
        @movies =  Movie.all
    end

    def show
        @movie = Movie.find(params[:id])
        end

    def new

    end
    
    def create 
        @movie = Movie.new(movie_params)
            if @movie.save #save the data in the database
                redirect_to movies_path #direct the user to the books list page 
            else 
                render action: "new" #stay in the same page 
            end
    end

    def edit 
        @movie = Movie.find(params[:id])
    end

    def destroy
        @movie = Movie.find(params[:id])
        if @movie.update(movie_params)
            redirect_to movie_params
        else
            render action:'edit'
        end
    end

    def update 
        @movie = Movie.find(params[:id])
        if @movie.update(movie_params)
            redirect_to movies_path
        else
            render action:'edit'
        end
    end

    def movie_params
            params.require(:movie).permit(:title, :director, :rating)
    end

end