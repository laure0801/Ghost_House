class ReservationsController < ApplicationController
  before_action :set_user, only: [:new, :create]

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = @user
    if @rervation.save
      redirect_to reservation_path(@reservation)
    else
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:departure, :arrival, :offer_id)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  def set_user
    @user = User.find(params[:list_id])
  end
end
