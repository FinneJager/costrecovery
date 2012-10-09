class AddReportNrToFireChiefs < ActiveRecord::Migration
  def self.up
    add_column :fire_chiefs, :report_nr, :string
  end

  def self.down
    remove_column :fire_chiefs, :report_nr
  end
end
