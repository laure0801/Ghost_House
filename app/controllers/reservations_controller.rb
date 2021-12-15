class ReservationsController < ApplicationController

  def show
    @reservations = Reservation.all
  end

  def new
    @offer = Offer.find(params[:offer_id])
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @offer = Offer.find(params[:offer_id])
    @reservation.offer = @offer
    @reservation.user = current_user
    if @reservation.save
      redirect_to reservation_path(@reservation)
    else
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:departure, :arrival)
  end
end
