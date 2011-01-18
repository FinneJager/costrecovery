class RenameMatListRef < ActiveRecord::Migration
  def self.up
     rename_column :mat_lists, :timesheet_id, :incident_id
  end

  def self.down
  rename_column :mat_lists, :incident_id, :timesheet_id
  end
end
