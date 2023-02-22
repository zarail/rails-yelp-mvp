class ReviewsController < ApplicationController

  def show
    @review = Review.find(params[:restaurant_id])
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id]) # bcs of the two parameters in the array in "new"
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant) # (confirmation)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
