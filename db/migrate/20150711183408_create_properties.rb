class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
    	t.string :type_of_land
			t.string :title
			t.decimal :price
			t.decimal :rate
			t.decimal :area
			t.string :person_type
			t.string :city
			t.string :location
			t.text :description
			t.string :name
			t.string :email
			t.string :mobile
			t.string :state	
			t.string :land_status
			t.attachment :image
			t.string :present_land_status
			t.string :electricity_type
			t.integer :contact_count
			t.integer :view_count
			t.decimal :latitude
			t.decimal :longitude
			t.integer :view_count
			t.boolean :gmaps
			t.attachment :document
      t.timestamps null: false
    end
  end
end
