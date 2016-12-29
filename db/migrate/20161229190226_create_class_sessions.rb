class CreateClassSessions < ActiveRecord::Migration
  def change
    create_table :class_sessions do |t|
      t.string :subject
      t.text :notes
      t.integer :number_of_students
      t.datetime :start_time
      t.datetime :end_time
      t.string :room

      t.timestamps
    end
  end
end
