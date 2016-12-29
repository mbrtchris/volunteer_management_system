class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.datetime :training_date
      t.integer :class_size

      t.timestamps
    end
  end
end
