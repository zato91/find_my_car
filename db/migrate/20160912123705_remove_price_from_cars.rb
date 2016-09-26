class RemovePriceFromCars < ActiveRecord::Migration
  def change
    remove_column :cars, :price
  end
end
