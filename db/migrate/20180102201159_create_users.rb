class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :location
      t.float :borrower_rating
      t.float :lister_rating
      t.string :picture

      t.timestamps
    end
  end
end
