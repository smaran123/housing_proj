class AddUnitToProperty < ActiveRecord::Migration
  def change
    add_column :properties, :unit, :string
  end
end
