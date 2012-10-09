class AddReportNrToEmts < ActiveRecord::Migration
  def self.up
    add_column :emts, :report_nr, :string
  end

  def self.down
    remove_column :emts, :report_nr
  end
end
