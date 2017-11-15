class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :user_id, :integer
  end
end
