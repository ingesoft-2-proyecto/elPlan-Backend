class CreateCalifications < ActiveRecord::Migration[5.2]
  def change
    create_table :califications do |t|
      t.integer :calification

      t.timestamps
    end
  end
end
