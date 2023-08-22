class AddIsRentedToShoes < ActiveRecord::Migration[7.0]
  def change
    add_column :shoes, :is_rented, :boolean, default: false
  end
end
