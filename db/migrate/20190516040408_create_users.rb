class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.date :born_date
      t.integer :age
      t.string :password
      t.float :latitude
      t.float :longitude
      t.boolean :notifications
      t.string :email

      t.timestamps
    end
  end
end
