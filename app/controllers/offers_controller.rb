class OffersController < ApplicationController
  before_action :set_offers, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:query].present?
      @offers = Offer.search_by_title_and_address(params[:query])
    else
      @offers = Offer.all
    end
    @markers = @offers.geocoded.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude

      }
    end
  end

  def show
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(params_offer)
    @offer.user = current_user
    if @offer.save
      redirect_to offers_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @offer.update(params_offer)
    if @offer.save
      redirect_to offers_path
    else
      render :new
    end
  end

  def destroy
    @offer.destroy
    redirect_to offers_path
  end

  private

  def set_offers
    @offer = Offer.find(params[:id])
  end

  def params_offer
    params.require(:offer).permit(:title, :description, :price, :address, :disponibility, :user_id, photos: [])
  end
end
