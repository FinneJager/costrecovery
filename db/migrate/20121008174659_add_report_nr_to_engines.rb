class AddReportNrToEngines < ActiveRecord::Migration
  def self.up
    add_column :engines, :report_nr, :string
  end

  def self.down
    remove_column :engines, :report_nr
  end
end
