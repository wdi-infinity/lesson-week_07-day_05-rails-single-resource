class ReviewsController < ApplicationController
  def show
  end

  def create
    @movie=Movie.find(params[:movie_id]) # nested id 
    @review=@movie.reviews.create(review_params)
    redirect_to movie_path(@movie)
  end

  def destroy
  end

  private
  def review_params
    params.require(:review).permit(:reviewer, :body, :rating)
  end
end
