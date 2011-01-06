class AddStatusToIncidents < ActiveRecord::Migration
  def self.up
    add_column :incidents, :status, :string
  end

  def self.down
    remove_column :incidents, :status
  end
end
