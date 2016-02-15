class User < ActiveRecord::Base
	has_many :cars, dependent: :destroy
	has_many :rents
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
