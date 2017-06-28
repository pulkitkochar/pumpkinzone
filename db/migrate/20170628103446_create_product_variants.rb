class CreateProductVariants < ActiveRecord::Migration
  def change
    create_table :product_variants do |t|
      t.references :product, index: true, foreign_key: true
      t.decimal :price, precision: 12, scale: 3
      t.string :variation

      t.timestamps null: false
    end
  end
end
