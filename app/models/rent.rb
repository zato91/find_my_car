class Rent < ActiveRecord::Base
  belongs_to :car
  belongs_to :user

  def total_price
    days = (date_end - date_start).to_i + 1
    price = days * car.price
  end

end
