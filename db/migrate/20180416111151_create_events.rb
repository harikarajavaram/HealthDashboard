class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :event_type
      t.references :patient, foreign_key: true
      t.time :start_time
      t.integer :duration
      t.float :calories

      t.timestamps
    end
  end
end
