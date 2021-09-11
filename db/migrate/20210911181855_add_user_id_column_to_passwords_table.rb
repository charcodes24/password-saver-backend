class AddUserIdColumnToPasswordsTable < ActiveRecord::Migration[6.1]
  def change
    add_column :passwords, :user_id, :integer
  end
end
