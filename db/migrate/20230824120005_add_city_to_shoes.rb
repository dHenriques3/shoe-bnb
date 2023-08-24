class AddCityToShoes < ActiveRecord::Migration[7.0]
  def change
    add_column :shoes, :city, :string
  end
end
