class AddLogToUsers < ActiveRecord::Migration
  def self.up
  add_column :users, :logo, :string
  end

  def self.down
  remove_column :users, :logo
  end
end
