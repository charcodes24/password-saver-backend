class ChangeColumnNameIsPasswordsTable < ActiveRecord::Migration[6.1]
  def change
    rename_column :passwords, :password_for, :key
    rename_column :passwords, :password, :chain
  end
end
