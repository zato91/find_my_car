class Rent < ActiveRecord::Base
  belongs_to :car
  belongs_to :user

  validates :date_start, presence: true
  validates :date_end, presence: true
end
