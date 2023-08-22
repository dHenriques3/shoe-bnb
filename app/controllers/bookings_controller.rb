class BookingsController < ApplicationController
  
  def index
    @bookings = booking.where("user_id = #{current_user.id}")
  end
  
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.shoe_id = params[:id]
    @booking.user = current_user

    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
end
