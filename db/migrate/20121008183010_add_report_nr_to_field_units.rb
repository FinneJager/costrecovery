class AddReportNrToFieldUnits < ActiveRecord::Migration
  def self.up
    add_column :field_units, :report_nr, :string
  end

  def self.down
    remove_column :field_units, :report_nr
  end
end
