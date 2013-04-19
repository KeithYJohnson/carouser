class AddLongitudeAndLatitudeToEvent < ActiveRecord::Migration
  def change
    add_column :events, :longtitude, :decimal
    add_column :events, :latitude, :decimal
  end
end
