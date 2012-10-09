class AddReportNrToTankers < ActiveRecord::Migration
  def self.up
    add_column :tankers, :report_nr, :string
  end

  def self.down
    remove_column :tankers, :report_nr
  end
end
