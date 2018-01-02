class ReservationsController < ApplicationController
  def index

    @reservation = Reservation.all
    render json: @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)
    # user = User.all.find{|i| i.id === @reservation.userId}
    # @reservation.user_id = user
    if @reservation.save

      render json: @reservation
    else
      render json: {errors: @reservation.errors.full_messages}
    end
  end

  def update
    @reservation = Reservation.find(params[:id])

  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
  end

  private
  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end
