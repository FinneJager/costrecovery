class AddAdminToUsers < ActiveRecord::Migration
  def self.up
  add_column :users, :admin, :string
  end

  def self.down
  add_column :users, :admin
  end
end
