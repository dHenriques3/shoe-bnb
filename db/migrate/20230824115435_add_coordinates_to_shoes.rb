class AddCoordinatesToShoes < ActiveRecord::Migration[7.0]
  def change
    add_column :shoes, :latitude, :float
    add_column :shoes, :longitude, :float
  end
end
