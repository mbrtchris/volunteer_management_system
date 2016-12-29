class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :name
      t.text :message
      t.datetime :display_until

      t.timestamps
    end
  end
end
