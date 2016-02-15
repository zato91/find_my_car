class Car < ActiveRecord::Base
  has_many :rents 
  belongs_to :user 
   validates :model, prensence: true
   validates :adress, prensence: true
   validates :price, prensence: true, numericality: { only_integer: true }
end
