class ChangeColumnsTo < ActiveRecord::Migration
  def change
  	change_column :properties, :latitude, :float
  	change_column :properties, :longitude, :float
  end
end
