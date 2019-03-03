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
    redirect_to movies_path #to see that actully delete it 
end

def new
    #dont need to go to db
end 
def edit
    @movie = Movie.find(params[:id])

end

def update 
    @movie = Movie.find(params[:id])
if @movie.update(movie_params)
    redirect_to movies_path
else
    render 'edit'
end
end


def create
    # movie.create(params[:movie])
    @movie = Movie.new(movie_params) #only copy
    if @movie.save 
        redirect_to movies_path
    else
        render "new" # the new view 
    end
end

def movie_params #protection
 params.require(:movie).permit(:title , :dirctor , :rating)
end

end