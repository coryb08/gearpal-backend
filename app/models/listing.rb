class Listing < ApplicationRecord
  belongs_to :user
  has_many :listing_reservations, :dependent => :destroy
  has_many :reservations, through: :listing_reservations
end
