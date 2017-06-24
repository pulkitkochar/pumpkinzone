class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :mobile_number
      t.string :house
      t.string :locality
      t.string :landmark
      t.string :city
      t.string :state
      t.string :pincode
      t.references :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
