class ShoesController < ApplicationController
  def index
    # @shoes will be the shoes that the user can rent out which have not been rented out.
    @shoes = Shoe.where(is_rented: false).where.not(user_id: current_user.id)
    # @my_shoes are the shoes that the user will have listed to be rented out.
    @my_shoes = Shoe.where("user_id = #{current_user.id}")
  end
end
