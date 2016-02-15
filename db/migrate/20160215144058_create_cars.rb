class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :model
      t.string :brand
      t.text :description
      t.integer :price
      t.string :adress
      t.string :engin
      t.integer :year
      t.integer :km
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
