class Unit < ApplicationRecord
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '個' },
    { id: 3, name: 'g' },
    { id: 4, name: 'ml' },
    { id: 5, name: '袋' },
    { id: 6, name: '箱' },
    { id: 7, name: '本' },
    { id: 8, name: '枚' },
    { id: 9, name: '束' },
  ]

  include ActiveHash::Associations
  has_many :foodstuffs
end
