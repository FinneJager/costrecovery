class AddReportNrToFireFighters < ActiveRecord::Migration
  def self.up
    add_column :fire_fighters, :report_nr, :string
  end

  def self.down
    remove_column :fire_fighters, :report_nr
  end
end
