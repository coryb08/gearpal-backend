class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :location
      t.integer :borrower_rating
      t.string :lister_rating
      t.string :picture
      t.has_many :reservations
      t.has_many :listings

      t.timestamps
    end
  end
end
