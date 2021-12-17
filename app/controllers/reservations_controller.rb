class ReservationsController < ApplicationController

  def show
    @reservation = Reservation.find(params[:id])
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
    @reservation.status = 'Pending'
    if @reservation.save
      redirect_to reservation_path(@reservation)
    else
      render :new
    end
  end

  def accept
    @reservation = Reservation.find(params[:id])
    @reservation.status = 'Accepted'
    if @reservation.save
      redirect_to profile_path
    else
      render 'profile'
    end
  end

  def decline
    @reservation = Reservation.find(params[:id])
    @reservation.status = 'Declined'
    if @reservation.save
      redirect_to profile_path
    else
      render 'profile'
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to root_url, notice: 'Reservation was successfully destroyed.'
  end

  private

  def reservation_params
    params.require(:reservation).permit(:departure, :arrival, :user_id, :offer_id)
  end
end
