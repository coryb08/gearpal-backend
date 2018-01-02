class ListingSerializer < ActiveModel::Serializer
  attributes :id, :title, :picture, :price, :rating, :availability, :location, :condition
  belongs_to :user
  has_many :reservations
end
