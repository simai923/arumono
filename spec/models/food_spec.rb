require 'rails_helper'

RSpec.describe Food, type: :model do
  before do
    @food = FactoryBot.build(:food)
  end

  describe '食材登録機能' do
    context '登録がうまくいくとき' do
      it 'name,amount,unit_id,limitが存在すれば登録できる' do
        expect(@food).to be_valid
      end
      it 'limitが空でも登録できる' do
        @food.limit = nil
        expect(@food).to be_valid
      end
    end

    context '登録がうまくいかない時' do
      it 'nameが空だと登録できない' do
        @food.name = nil
        @food.valid?
        expect(@food.errors.full_messages).to include("Name can't be blank")
      end
      it 'amountが空だと登録できない' do
        @food.amount = nil
        @food.valid?
        expect(@food.errors.full_messages).to include("Amount can't be blank")
      end
      it 'amountが数字でないと登録できない' do
        @food.amount = '１０'
        @food.valid?
        expect(@food.errors.full_messages).to include("Amount is not a number")
      end
      it 'unit_idが1だと登録できない' do
        @food.unit_id = 1
        @food.valid?
        expect(@food.errors.full_messages).to include("Unit must be other than 1")
      end
    end
  end
end
