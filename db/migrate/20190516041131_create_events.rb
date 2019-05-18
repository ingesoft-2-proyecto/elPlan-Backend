class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :borough
      t.datetime :date_of_event
      t.string :name
      t.text :description
      t.float :cost
      t.string :type_of_public
      t.boolean :over
      t.float :latitude
      t.float :longitude
      t.string :address

      t.timestamps
    end
  end
end
