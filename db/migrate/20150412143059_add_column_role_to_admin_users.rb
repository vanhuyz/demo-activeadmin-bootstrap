class AddColumnRoleToAdminUsers < ActiveRecord::Migration
  def change
  	add_column :admin_users, :role, :integer
  end
end
