class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :email
      t.date :dob
      t.string :provider
      t.integer :provider_id

      t.timestamps
    end
  end
end
