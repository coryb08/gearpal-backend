class CreateReservations < ActiveRecord::Migration[5.1]
  def change
    create_table :reservations do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :name
      t.references :reserver, polymorphic: true

      t.timestamps
    end
    add_index :reservations, :name
  end
end
