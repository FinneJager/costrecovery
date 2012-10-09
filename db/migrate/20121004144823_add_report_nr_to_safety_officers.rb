class AddReportNrToSafetyOfficers < ActiveRecord::Migration
  def self.up
    add_column :safety_officers, :report_nr, :string
  end

  def self.down
    remove_column :safety_officers, :report_nr
  end
end
