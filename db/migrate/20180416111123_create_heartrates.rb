class CreateHeartrates < ActiveRecord::Migration[5.0]
  def change
    create_table :heartrates do |t|
      t.time :time
      t.float :value
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
