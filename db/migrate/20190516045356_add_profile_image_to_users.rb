class AddProfileImageToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :profile_image, foreign_key: true
  end
end
