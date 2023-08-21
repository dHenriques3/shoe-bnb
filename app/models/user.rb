class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :shoes, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :shoes, through: :bookings

  validates_presence_of :first_name, :last_name
end
