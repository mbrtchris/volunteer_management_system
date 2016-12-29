class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :grade
      t.references :class_session, index: true

      t.timestamps
    end
  end
end
