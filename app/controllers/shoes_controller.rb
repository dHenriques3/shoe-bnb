class ShoesController < ApplicationController
  def index
    @shoes = Shoe.all
    @my_shoes = Shoe.where("user_id = #{current_user.id}")
  end
end
