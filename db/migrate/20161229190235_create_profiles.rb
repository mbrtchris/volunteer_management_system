class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user, index: true
      t.boolean :is_educator
      t.boolean :is_volunteer
      t.text :personal_statement
      t.references :organization, index: true
      t.references :class_session, index: true
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
