class ListingSerializer < ActiveModel::Serializer
  attributes :id, :title, :picture, :price, :availability, :location, :condition, :rating
  belongs_to :lister, polymorphic: true
  has_many :reservations
end
