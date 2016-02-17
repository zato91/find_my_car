class Car < ActiveRecord::Base
	has_attachment :photo
  CATEGORIES = %w(Audi BMW Citroën Ford Hyundai Kia Mazda Nissan Peugeot Renault Toyota)
  has_many :rents
  belongs_to :user
   validates :model, presence: true
   validates :address, presence: true
   validates :price, presence: true, numericality: { only_integer: true }
end
