class AddForeignKeysToEventCategories < ActiveRecord::Migration[5.2]
  def change
    add_reference :event_categories, :event, foreign_key: true
    add_reference :event_categories, :category, foreign_key: true
  end
end
