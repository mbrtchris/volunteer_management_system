class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.string :name
      t.text :description
      t.references :profile, index: true
      t.references :class_session, index: true
      t.references :training_record, index: true
      t.references :training, index: true

      t.timestamps
    end
  end
end
