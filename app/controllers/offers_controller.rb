class OffersController < ApplicationController
  before_action :params_offer, only: [:create]
  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find(params[:id])
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

  private

  def params_offer
    params.require(:offer).permit(:title, :description, :price, :address, :disponibility, :user_id)
  end
end
