class AddDetailsToIncident < ActiveRecord::Migration
  def self.up
    add_column :incidents, :resp_zip, :string
    add_column :incidents, :insur_zip, :string
  end

  def self.down
    remove_column :incidents, :insur_zip
    remove_column :incidents, :resp_zip
  end
end
