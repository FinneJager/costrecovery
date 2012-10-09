class AddReportNrToEmergencySupports < ActiveRecord::Migration
  def self.up
    add_column :emergency_supports, :report_nr, :string
  end

  def self.down
    remove_column :emergency_supports, :report_nr
  end
end
