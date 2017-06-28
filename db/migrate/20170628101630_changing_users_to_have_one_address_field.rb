class ChangingUsersToHaveOneAddressField < ActiveRecord::Migration
  def change
    remove_column :users, :house
    remove_column :users, :locality
    remove_column :users, :landmark
    remove_column :users, :city

    add_column :users, :address, :string
  end
end
