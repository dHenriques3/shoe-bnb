class ShoesController < ApplicationController
  def index
    @shoes = Shoes.all
  end

  def new
    @shoe = Shoe.new
  end

  def create
    @shoe = Shoe.new(shoe_params)
    @shoe.user = current_user
    raise
    if @shoe.save
      redirect_to shoes_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def shoe_params
    params.require(:shoe).permit(:name, :brand, :price_per_day)
  end
end
