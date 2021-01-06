class Food < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :amount, :unit_id, numericality: { only_integer: true }
  end
end
