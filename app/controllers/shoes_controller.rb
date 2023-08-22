class ShoesController < ApplicationController
  def index
    # @shoes will be the shoes that the user can rent which have not been rented out.
    @shoes = Shoe.where(is_rented: false).where.not(user_id: current_user.id)
  end

  def my_shoes
    # @my_shoes are the shoes that the user has created and can rent out.
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
    if @shoe.save
      redirect_to shoes_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @shoe = Shoe.find(params[:id])
    @shoe.destroy
    redirect_to my_shoes_path, status: :see_other
  end

  private

  def shoe_params
    params.require(:shoe).permit(:name, :brand, :price_per_day)
  end
end
