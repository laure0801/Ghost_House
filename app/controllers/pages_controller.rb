class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @offers = Offer.all
  end

  def profile
    @user = current_user
    @reservation_requests = @user.reservations
    @reservation_demands = []
    @reservations = Reservation.all
    @reservations.each do |reservation|
      @reservation_demands << reservation if reservation.offer.user == @user
    end
  end
end
