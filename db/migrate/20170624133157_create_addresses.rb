class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.references :user, index: true, foreign_key: true
      t.string :house
      t.string :locality
      t.string :landmark
      t.string :city
      t.string :state
      t.string :pincode

      t.timestamps null: false
    end
  end
end
