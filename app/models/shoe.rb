class Shoe < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates_presence_of :name, :brand, :price_per_day, :user_id
end
