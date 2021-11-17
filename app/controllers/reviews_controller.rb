class ReviewsController < ApplicationController
  before_action :set_restaurant, except: [:destroy]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to @restaurant
    else
      puts "error? #{@review.errors.full_messages}"
      render 'new'
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to @review.restaurant
  end

  private
    def review_params
      params.require(:review).permit(:content)
    end

    def set_restaurant
      @restaurant = Restaurant.find(params[:restaurant_id])
    end
end
