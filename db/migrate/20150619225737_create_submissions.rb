class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.integer :car_id
      t.string :name
      t.string :phone
      t.text :complaint
      t.string :email

      t.timestamps
    end
  end
end
