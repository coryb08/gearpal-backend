class User < ApplicationRecord
  has_many :reservations, :dependent => :destroy
  has_many :listings, :dependent => :destroy
end
