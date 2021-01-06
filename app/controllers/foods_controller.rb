class FoodsController < ApplicationController
  def index
    @foods = Food.order('foods.limit IS NULL ASC', 'foods.limit ASC')
  end
end
