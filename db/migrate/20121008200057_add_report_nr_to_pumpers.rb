class AddReportNrToPumpers < ActiveRecord::Migration
  def self.up
    add_column :pumpers, :report_nr, :string
  end

  def self.down
    remove_column :pumpers, :report_nr
  end
end
