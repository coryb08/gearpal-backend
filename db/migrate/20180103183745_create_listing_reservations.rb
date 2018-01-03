class CreateListingReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :listing_reservations do |t|
      t.belongs_to :listing, foreign_key: true
      t.belongs_to :reservation, foreign_key: true

      t.timestamps
    end
  end
end
