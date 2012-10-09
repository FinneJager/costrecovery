class AddReportNrToHazmatUnits < ActiveRecord::Migration
  def self.up
    add_column :hazmat_units, :report_nr, :string
  end

  def self.down
    remove_column :hazmat_units, :report_nr
  end
end
