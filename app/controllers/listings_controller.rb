class ListingsController < ApplicationController
  def index

    @listings = Listing.all
    render json: @listings
  end

  def create
    @listing = Listing.new(listing_params)
    # user = User.all.find{|i| i.id === @listing.userId}
    # @listing.user_id = user
    if @listing.save

      render json: @listing
    else
      render json: {errors: @listing.errors.full_messages}
    end
  end

  def update
    @listing = Listing.find(params[:id])
    @listing.rating = params[:rating]
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
  end

  private
  def listing_params
    params.require(:listing).permit(:title, :picture, :condition, :price, :location, :lister_type, :lister_id)
  end
end
