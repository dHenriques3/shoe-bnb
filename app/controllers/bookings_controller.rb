class BookingsController < ApplicationController
  def index
    @bookings = Booking.where("user_id = #{current_user.id}")
  end

  def new
    @booking = Booking.new
    @shoe = Shoe.find(params[:shoe_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.shoe_id = params[:shoe_id]
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :shoe_id)
  end
end
