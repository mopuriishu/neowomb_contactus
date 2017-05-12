class CreateContactuspages < ActiveRecord::Migration
  def change
    create_table :contactuspages do |t|
      t.string :name
      t.string :email
      t.string :subject
      t.string :description
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
