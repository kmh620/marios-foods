class ReviewsController < ApplicationController

  def new
    @food = Food.find(params[:food_id])
    @review = @food.reviews.new
    render :new
  end

  def create
    @food = Food.find(params[:food_id])
    @review = @food.reviews.new(review_params)
    if @review.save
      render :show
    else
      render :new
    end
  end


  def destroy
    @food = Food.find(params[:food_id])
    @review = @food.reviews.find(params[:id])
    @review.destroy
     redirect_to foods_path
   end

  private

  def review_params
    params.require(:review).permit(:author, :content_body, :rating, :food_id)
  end
end
