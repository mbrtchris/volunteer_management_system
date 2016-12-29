class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :type
      t.references :class_session, index: true

      t.timestamps
    end
  end
end
