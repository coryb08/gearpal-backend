class User < ApplicationRecord
  has_many :reservations, as: :reserver, :dependent => :destroy
  has_many :listings, as: :lister, :dependent => :destroy
end
