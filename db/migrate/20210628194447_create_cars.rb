class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :color
      t.string :category
      t.integer :price
      t.integer :release_year
      t.decimal :acceleration
    end
  end
end
