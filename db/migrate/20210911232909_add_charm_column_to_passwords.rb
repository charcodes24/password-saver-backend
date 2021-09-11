class AddCharmColumnToPasswords < ActiveRecord::Migration[6.1]
  def change
    add_column :passwords, :charm, :string
  end
end
