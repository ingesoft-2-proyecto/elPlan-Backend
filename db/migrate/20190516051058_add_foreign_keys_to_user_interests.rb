class AddForeignKeysToUserInterests < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_interests, :user, foreign_key: true
    add_reference :user_interests, :interest, foreign_key: true
  end
end
