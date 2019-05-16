class AddEventToEventImages < ActiveRecord::Migration[5.2]
  def change
    add_reference :event_images, :event, foreign_key: true
  end
end
