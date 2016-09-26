class AddMonetizeToPriceInCars < ActiveRecord::Migration
  def change
    add_monetize :cars, :price
  end
end
