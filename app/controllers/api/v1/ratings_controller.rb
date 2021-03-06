class Api::V1::RatingsController < ApplicationController
  before_action :set_rating, only: [:show, :update, :destroy]
  # before_action :authenticate_user, only: [:create, :update, :destroy]

  # GET /brewery_ratings
  def brewery_ratings
    brewery_id = params[:brewery_id]
    @ratings = Rating.for_brewery(brewery_id)
    render json: @ratings
  end

  def user_ratings
    user_id = params[:user_id]
    @ratings = Rating.where(user_id: user_id)
    render json: @ratings
  end

  #GET /average_rating
  # def average_rating
  #   brewery_id = params[:brewery_id]
  #   average = Rating.average(brewery_id)

  # end

  # GET /ratings
  def index
    @ratings = Rating.all

    render json: @ratings
  end

  # GET /ratings/1
  def show
    render json: @rating
  end

  # POST /ratings
  def create
    if Rating.find_by(user_id: params[:user_id], brewery_id: params[:brewery_id])
      render json: { error: 'You have already reviewed this brewery'}, status: :not_acceptable
    else   
      @rating = Rating.new(rating_params)

      if @rating.save
        render json: { rating: RatingSerializer.new(@rating)}, status: :created
      else
        render json: @rating.errors, status: :unprocessable_entity
      end
    end
  end

  # PATCH/PUT /ratings/1
  def update
    if @rating.update(rating_params)
      render json: @rating
    else
      render json: @rating.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ratings/1
  def destroy
    @rating.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rating
      @rating = Rating.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def rating_params
      params.permit(:rating, :user_id, :brewery_id, :brewery_name, :review)
    end
end
