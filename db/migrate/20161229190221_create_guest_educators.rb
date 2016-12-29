class CreateGuestEducators < ActiveRecord::Migration
  def change
    create_table :guest_educators do |t|
      t.string :email
      t.string :name
      t.references :class_session, index: true

      t.timestamps
    end
  end
end
