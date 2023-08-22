class ShoesController < ApplicationController
  
  def index
    # @shoes will be the shoes that the user can rent out which have not been rented out.
    @shoes = Shoe.where(is_rented: false).where.not(user_id: current_user.id)
    # @my_shoes are the shoes that the user will have listed to be rented out.
    @my_shoes = Shoe.where("user_id = #{current_user.id}")
  end

  def show
    @shoe = Shoe.find(params[:id])
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
