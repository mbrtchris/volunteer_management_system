class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zipcode
      t.boolean :is_mailing
      t.references :organization, index: true
      t.references :profile, index: true
      t.references :training, index: true

      t.timestamps
    end
  end
end
