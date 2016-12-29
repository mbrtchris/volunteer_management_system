class CreateTrainingRecords < ActiveRecord::Migration
  def change
    create_table :training_records do |t|
      t.references :profile, index: true
      t.string :type
      t.references :training, index: true
      t.boolean :has_passed
      t.datetime :expires_at

      t.timestamps
    end
  end
end
