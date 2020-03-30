class ReviewsController < ApplicationController
  def create
    @movie=Movie.find(params[:movie_id])#goeas to the database and get that object
    @review = @movie.reviews.create(review_params)#give back all the reviews of that movie 
    # if @review.save
      redirect_to movie_path(@movie)
    # else
    #   render
    # end
  end

  def destroy
  end

  private
  def review_params
    params.require(:review).permit(:reviewer , :body , :rating)
  end
end
