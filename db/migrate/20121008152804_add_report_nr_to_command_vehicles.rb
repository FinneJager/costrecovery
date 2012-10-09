class AddReportNrToCommandVehicles < ActiveRecord::Migration
  def self.up
    add_column :command_vehicles, :report_nr, :string
  end

  def self.down
    remove_column :command_vehicles, :report_nr
  end
end
