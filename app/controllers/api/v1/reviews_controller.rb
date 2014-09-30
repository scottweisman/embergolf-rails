class Api::V1::ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :destroy]

  def show
    render json: @review
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      render json: nil
    else
      render json @review.errors, status: :unprocesable_entity
    end
  end

  def destroy
    if @review.destroy
      render json: nil
    else
      render json @review.errors, status: :unprocesable_entity
    end
  end

  private

    def set_review
      @review = Review.find(params[:id])
    end

    def review_params
      params.require(:review).permit(:content)
    end
end