class AddDatetimeToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :date_of_comment, :datetime
  end
end
