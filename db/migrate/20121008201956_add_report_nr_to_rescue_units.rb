class AddReportNrToRescueUnits < ActiveRecord::Migration
  def self.up
    add_column :rescue_units, :report_nr, :string
  end

  def self.down
    remove_column :rescue_units, :report_nr
  end
end
