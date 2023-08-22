class BookingsController < ApplicationController
  def index
    @bookings = booking.where("user_id = #{current_user.id}")
  end
end
