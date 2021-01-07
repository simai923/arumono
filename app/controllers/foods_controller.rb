class FoodsController < ApplicationController
  def index
    @foods = Food.order('foods.limit IS NULL ASC', 'foods.limit ASC')
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to success_foods_path
    else
      render 'new'
    end
  end

  private
  def food_params
    params.require(:food).permit(:name, :amount, :unit_id, :limit)
  end
end
