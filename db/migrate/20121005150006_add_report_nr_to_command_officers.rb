class AddReportNrToCommandOfficers < ActiveRecord::Migration
  def self.up
    add_column :command_officers, :report_nr, :string
  end

  def self.down
    remove_column :command_officers, :report_nr
  end
end
