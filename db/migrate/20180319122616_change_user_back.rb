class ChangeUserBack < ActiveRecord::Migration[5.1]
  def change
    remove_index("admin_users", "username")
    rename_column("admin_users", "hash_password", "password")
    change_column("admin_users", "email", :string, :default => '', :null => false)
    remove_column("admin_users","username")
    rename_table("admin_users", "users")
  end
end
