class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :picture
      t.integer :price
      t.boolean :availability
      t.string :location
      t.string :condition
      t.string :name
      t.references :lister, polymorphic: true

      t.timestamps
    end
    add_index :listings, :name
  end
end
