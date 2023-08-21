class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :shoe

  validates_presence_of :start_date, :end_date, :user_id, :shoe_id
end
