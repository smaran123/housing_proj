class CreateContactUs < ActiveRecord::Migration
  def change
    create_table :contact_us do |t|
      t.string :name
      t.string :email
      t.text :message
      t.string :subject

      t.timestamps null: false
    end
  end
end
