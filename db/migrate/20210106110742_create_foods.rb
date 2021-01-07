class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string  :name, null: false
      t.integer :amount, null: false
      t.integer :unit_id, null: false
      t.date    :limit
      t.timestamps
    end
  end
end
