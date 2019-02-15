class ReviewsController < ApplicationController
  before_action :set_song

  def new
    @review = Review.new
  end

  def create
    # @review = @song.reviews.new(review_params)
    @review = Review.new(review_params)
    @review.song = @song
    if @review.save
      redirect_to @song
    else
      render 'songs/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

  def set_song
    @song = Song.find(params[:song_id])
  end
end
