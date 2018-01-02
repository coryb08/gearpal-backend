class Listing < ApplicationRecord
  belongs_to :user
  has_many :listing_reservations
  has_many :reservations, through: :listing_reservations
end
