class Shoe < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates_presence_of :name, :brand, :price_per_day

  has_many_attached :photos

  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
end
