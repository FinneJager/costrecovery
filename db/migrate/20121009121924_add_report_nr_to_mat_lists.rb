class AddReportNrToMatLists < ActiveRecord::Migration
  def self.up
    add_column :mat_lists, :report_nr, :string
  end

  def self.down
    remove_column :mat_lists, :report_nr
  end
end
