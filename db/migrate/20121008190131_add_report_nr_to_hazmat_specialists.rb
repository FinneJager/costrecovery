class AddReportNrToHazmatSpecialists < ActiveRecord::Migration
  def self.up
    add_column :hazmat_specialists, :report_nr, :string
  end

  def self.down
    remove_column :hazmat_specialists, :report_nr
  end
end
