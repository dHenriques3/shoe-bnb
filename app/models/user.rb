class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # the user has many shoes which they have created to be rented.
  has_many :shoes, dependent: :destroy
  # the user has many bookings of shoes to rent
  has_many :bookings, dependent: :destroy
  # the user has many shoes which they are renting through bookings
  has_many :shoes, through: :bookings

  validates_presence_of :first_name, :last_name
end
