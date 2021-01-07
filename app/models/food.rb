class Food < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :unit

  with_options presence: true do
    validates :name
    validates :amount, numericality: { only_integer: true }
    validates :unit_id, numericality: { other_than: 1, message: "select"}
  end
end
