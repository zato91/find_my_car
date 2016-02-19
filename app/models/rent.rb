class Rent < ActiveRecord::Base
  belongs_to :car
  belongs_to :user

  validates :date_start, presence: true
  validates :date_end, presence: true

  def total_price
    days = (date_end - date_start).to_i + 1
    price = days * car.price
  end


end
