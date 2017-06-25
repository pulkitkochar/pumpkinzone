class AddingCategoriesAndAssociatingProductsWithCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
    end

    add_reference :products, :category
  end
end
