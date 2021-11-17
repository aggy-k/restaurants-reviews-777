class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :address
      t.integer :rating, default: 0
      t.integer :votes, default: 0

      t.timestamps
    end
  end
end
