class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :company_id
      t.string :code
      t.string :make
      t.string :model
      t.string :color
      t.string :license_plate

      t.timestamps
    end
  end
end
