class Car < ActiveRecord::Base
  has_many :rents 
  belongs_to :user 
   validates :model, presence: true
   validates :adress, presence: true
   validates :price, presence: true, numericality: { only_integer: true }
end
