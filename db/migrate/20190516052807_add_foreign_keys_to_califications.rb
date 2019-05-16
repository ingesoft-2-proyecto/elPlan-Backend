class AddForeignKeysToCalifications < ActiveRecord::Migration[5.2]
  def change
    add_reference :califications, :user, foreign_key: true
    add_reference :califications, :event, foreign_key: true
  end
end
