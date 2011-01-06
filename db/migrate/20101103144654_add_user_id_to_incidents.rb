class AddUserIdToIncidents < ActiveRecord::Migration
  def self.up
	add_column :incidents, :user_id, :integer
  end

  def self.down
	remove_column :incidents, :user_id
  end
end
