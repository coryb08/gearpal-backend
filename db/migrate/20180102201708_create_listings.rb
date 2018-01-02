class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :picture
      t.integer :price
      t.integer :rating
      t.boolean :availability
      t.string :location
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
